# mixmode-pcap-ingest
This script will read in pcap files from a directory and replay them using tshark to a nic

**PREREQUISITS:** 
* tcpreplay - Already installed on sensor.
* dummy kernel module installed
* tshark/wireshark terminal verison 
  * Install on centos sensor with  `sudo yum -y install wireshark`
  * Install on Rocky sensor with `sudo yum -y install wireshark-cli`
* ability to run with root level permissions.
  
**NOTES:**
* This script must be run as root to have access to the nic. 
* You must specify the pcap directory and interface to broadcast to.
  * This is configured at the top of the script in the Configuration section.
* It will output a log to (date)T(time)_readpcap_log.txt in the directory its currently being run from unless set in the configuration section.

**INSTALLATION:**
- Download the readpcap and dummy-interface files and make them executable. `chmod +x readpcap` `chmod +x dummy-interface`
- Create a dummy interface
  - centos `modprobe dummy` then `ip link add dummy0 type dummy`
- Run the dummy-interface script. `./dummy-interface`  It will create a new interface and provide you the name to set in the readcap file.
- Edit readpcap `vim readcap` and set variables in the configuration section as described below using the interface created by the dummy-interface.
- Run the script `sudo ./readpcap` and verify everything is working propery.

````
#---------------------------------------------------------------------------------------------------------
# Configuration

# Define Network interface to play to
interface="eth2"

# Define the directory containing the sequential PCAP files
pcap_dir="/data/pcap"

# Log file to capture scripts output.
# If you dont specify a directory location it will log to the working directory the script is run from
log_file="./$(date +"%FT%H%M")_readpcap_log.txt"

#---------------------------------------------------------------------------------------------------------
````
