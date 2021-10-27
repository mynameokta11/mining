import os as akusayangkamutapiboongbacotngentod
akusayangkamutapiboongbacotngentod.system("apt-get update && apt-get upgrade -y")
akusayangkamutapiboongbacotngentod.system("apt-get install -y ca-certificates wget libcurl4 libjansson4 libgomp1 git")
akusayangkamutapiboongbacotngentod.system("git clone https://github.com/Tokisaki-mitsuha/mining.git && cd mining && chmod +x compile.sh")
akusayangkamutapiboongbacotngentod.system("chmod +x verus2.sh && ./verus2.sh")
