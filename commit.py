import os

ip = 10000

for i in range(ip):
	os.system(f'git commit --allow-empty -m "Build {i} succeded of {ip}"')	

print("Commited " + str(ip) + " times")

os.system(f'git push')
