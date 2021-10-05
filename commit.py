import os

ip = 100

for i in range(ip):
	os.system(f'git commit --allow-empty -m "Commit {i} of {ip}"')	

print("Commited " + str(ip) + " times")
