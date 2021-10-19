import os

ip = 10000

for i in range(ip):
	os.system('git commit --allow-empty -m "New Commit at: $(date)"')

print("Commited " + str(ip) + " times")

os.system('git push')
