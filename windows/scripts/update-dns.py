import ctypes
import fileinput
import os
import random
import re
import sys

from subprocess import PIPE, Popen, run

if not ctypes.windll.shell32.IsUserAnAdmin():
    print("Please run as administrator.")
    sys.exit()

hosts = os.path.join(
    os.environ["SystemRoot"],
    "System32",
    "Drivers",
    "Etc",
    "Hosts"
)

pattern = r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"


def pingable(ip):
    process = run(
        ["ping", "-n", "1", ip],
        stdin=PIPE,
        stdout=PIPE,
        stderr=PIPE
    )
    return not process.returncode


response = run(
    ["get-archlinux-ip.bat"],
    stdin=PIPE,
    stdout=PIPE,
    stderr=PIPE,
    shell=True
)

stdout = response.stdout.decode()

while True:
    ip = random.choice(re.findall(pattern, stdout))
    if pingable(ip):
        break

with fileinput.FileInput(hosts, inplace=True) as file:
    for line in file:
        if "archlinux" in line:
            sys.stdout.write(re.sub(pattern, ip, line))
        else:
            sys.stdout.write(line)

print("Updated DNS.")
