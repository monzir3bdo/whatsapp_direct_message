import os
import re
import json

# Paths
lib_folder_path = "./lib"
json_file_path = "./lang/En.json"
lang_keys_file_path = "./lib/core/localization/lang_keys.dart"

# Load existing keys from En.json or create a new dictionary
if os.path.exists(json_file_path):
    with open(json_file_path, "r", encoding="utf-8") as json_file:
        try:
            translations = json.load(json_file)
        except json.JSONDecodeError:
            print("Error: En.json is not a valid JSON file. Please check its format.")
            translations = {}
else:
    translations = {}

# Regular expression to find strings followed by .hardCoded without parentheses
translation_regex = r'([\'"])(.*?)(?<!\\)\1\.hardCoded'

# Required imports to be added if they do not exist
required_imports = [
    "import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';",
    "import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';"
]

def generate_key(text):
    """Generate a snake_case key by converting to lowercase, replacing special characters and spaces with underscores."""
    key = re.sub(r'\W+', '_', text.strip().lower())
    return key

def to_lower_camel_case(snake_str):
    """Convert a snake_case string to lowerCamelCase."""
    components = snake_str.split('_')
    return components[0] + ''.join(x.title() for x in components[1:])

def ensure_imports(content):
    """Ensure the required imports are present at the top of the file."""
    imports_added = False
    for imp in required_imports:
        if imp not in content:
            content = imp + '\n' + content
            imports_added = True
    return content, imports_added

def update_lang_keys_file(key, lower_camel_key):
    """Update the lang_keys.dart file with new keys."""
    if not os.path.exists(lang_keys_file_path):
        print(f"Creating new lang_keys.dart file.")
        # If lang_keys.dart doesn't exist, create it with a class definition
        with open(lang_keys_file_path, "w", encoding="utf-8") as lang_file:
            lang_file.write("class LangKeys {\n")
            lang_file.write(f"  static const String {lower_camel_key} = '{key}';\n")
            lang_file.write("}\n")
    else:
        # Check if the key is already present
        with open(lang_keys_file_path, "r", encoding="utf-8") as lang_file:
            content = lang_file.read()
        
        if f"static const String {lower_camel_key} = '{key}';" not in content:
            print(f"Adding key '{lower_camel_key}' to lang_keys.dart")
            # Append new key to lang_keys.dart
            with open(lang_keys_file_path, "a", encoding="utf-8") as lang_file:
                lang_file.write(f"  static const String {lower_camel_key} = '{key}';\n")
        else:
            print(f"Key '{lower_camel_key}' already exists in lang_keys.dart")

def process_file(file_path):
    print(f"Processing file: {file_path}")
    with open(file_path, "r", encoding="utf-8") as file:
        content = file.read()

    # Search for all occurrences of strings before .hardCoded
    matches = re.findall(translation_regex, content)
    
    if not matches:
        print(f"No .hardCoded matches found in {file_path}")
        return

    # Ensure the required imports are at the top of the file
    content, imports_added = ensure_imports(content)

    if imports_added:
        print(f"Added necessary imports to {file_path}")

    for match in matches:
        quote, original_text = match
        key = generate_key(original_text)
        lower_camel_key = to_lower_camel_case(key)

        # Add the entry to the JSON dictionary if it doesn't already exist
        if key not in translations:
            print(f"Adding '{key}' : '{original_text}' to En.json")
            translations[key] = original_text

        # Replace in the file content with context.translate(LangKeys.<lowerCamelCaseKey>)
        new_text = f"context.translate(LangKeys.{lower_camel_key})"
        content = content.replace(f"{quote}{original_text}{quote}.hardCoded", new_text)
        print(f"Replaced '{original_text}.hardCoded' with 'context.translate(LangKeys.{lower_camel_key})'")

        # Update lang_keys.dart with the new key in lowerCamelCase
        update_lang_keys_file(key, lower_camel_key)

    # Save the modified content back to the .dart file
    with open(file_path, "w", encoding="utf-8") as file:
        file.write(content)
    print(f"File {file_path} updated successfully!")

def process_folder(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(".dart"):
                process_file(os.path.join(root, file))

# Process the /lib folder
process_folder(lib_folder_path)

# Save the updated translations to En.json without overwriting existing content
with open(json_file_path, "w", encoding="utf-8") as json_file:
    json.dump(translations, json_file, ensure_ascii=False, indent=4)

print("Translation keys generated, lang_keys.dart updated, and files updated successfully!")
