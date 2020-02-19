#Kevin Lee
import subprocess
import os
#call Lat shell
subprocess.call("./lat.sh", shell=True)
#call higher station shell
subprocess.call("./higher.sh", shell=True)
#Call gmt script to produce tif
subprocess.call("./gmt.sh", shell=True)
