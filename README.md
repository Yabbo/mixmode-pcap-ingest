# mixmode-pcap-ingest
Read in pcap files from a directory and replay them using tshark to a nic

PREREQUISITS: 
- tcpreplay
- tshark (wireshark terminal verison)
- ability to run with root level permissions
  
NOTES: 
- This script must be run as root to have access to the nic. 
- You must specify the pcap directory and nic to broadcast to
-- This is configured at the top of the script in the Configuration section
- It will output a log to script_log.txt in the directory its currently being run from unless set in the configuration section..



````
#---------------------------------------------------------------------------------------------------------
# Configuration

# Define Network interface to play to
interface="en0"

# Define the directory containing the sequential PCAP files
pcap_dir="/Users/boivinr/Downloads/pcap"

# Log file to capture scripts output.
# If you dont specify a directory location it will log to the working directory the script is run from
log_file="script_log.txt"

#---------------------------------------------------------------------------------------------------------
````
