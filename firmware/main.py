import os

ascii = r"""
 /$$$$$$$  /$$             /$$                          /$$$$$$   /$$$$$$ 
| $$__  $$| $$            | $$                         /$$__  $$ /$$__  $$
| $$  \ $$| $$ /$$   /$$ /$$$$$$    /$$$$$$  /$$   /$$| $$  \ $$| $$  \__/
| $$$$$$$/| $$| $$  | $$|_  $$_/   /$$__  $$|  $$ /$$/| $$  | $$|  $$$$$$ 
| $$____/ | $$| $$  | $$  | $$    | $$  \ $$ \  $$$$/ | $$  | $$ \____  $$
| $$      | $$| $$  | $$  | $$ /$$| $$  | $$  >$$  $$ | $$  | $$ /$$  \ $$
| $$      | $$|  $$$$$$/  |  $$$$/|  $$$$$$/ /$$/\  $$|  $$$$$$/|  $$$$$$/
|__/      |__/ \______/    \___/   \______/ |__/  \__/ \______/  \______/ 
    1.0.0
"""
model = "Plutox 1"
cpu = "Plutox Unit 1000"
ram = "512Bytes"
ram_model = "Plutox Brain 512"
build = "official"

print(ascii)

while True:
    cmd = input("$ ")

    if cmd.lower() == "exit":
        exit()

    if cmd == "help":
        print("Available commands: exit, help, info, clear")

    if cmd == "info":
        print(f"Model: {model}")
        print(f"CPU: {cpu}")
        print(f"RAM: {ram} ({ram_model})")
        print(f"Build: {build}")

    elif cmd == "clear":
        os.system('cls' if os.name == 'nt' else 'clear')

    else:
        print(f"Command not found: {cmd}")
        print("Type 'help' for a list of available commands.")
