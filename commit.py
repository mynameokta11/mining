import os

ip = 100
autoPush = "y"

for i in range(ip):
	os.system(f'git commit --allow-empty -m "Commit {i} of {ip}"')	

print("Commited " + str(ip) + " times")

if autoPush == "y":
	os.system('git push')
