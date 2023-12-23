#!/bin/bash
echo "             __              __                __              __    "
# echo ".----.-----.|__|______.----.|  |--.-----.----.|  |--.--------.|  |--."
# echo "|   _|  _  ||  |______|  __||     |  -__|  __||    <|        ||    < "
# echo "|__| |   __||__|      |____||__|__|_____|____||__|__|__|__|__||__|__|"
# echo "     |__|     "
 if [ ! -d /omd/sites/mon ]; then
   ./init.sh
 fi
 if ! id -g mon &>/dev/null; then
     groupadd -g 1000 mon
 fi
 if ! id -u mon &>/dev/null; then
     useradd -g 1000 -u 1000 -ms /bin/bash -d /omd/sites/mon mon
 fi
 
usermod -aG mon www-data
usermod -aG omd mon
#omd mv mon temp
#omd mv temp mon
omd enable mon
 
md config mon set APACHE_TCP_ADDR 0.0.0.0
omd start mon
tail -f "/opt/omd/sites/mon/var/log/nagios.log" && tail -f "/omd/sites/mon/var/nagios/livestatus.log"
#  fi


#!/bin/bash

# echo "             __              __                __              __    "
# echo ".----.-----.|__|______.----.|  |--.-----.----.|  |--.--------.|  |--."
# echo "|   _|  _  ||  |______|  __||     |  -__|  __||    <|        ||    < "
# echo "|__| |   __||__|      |____||__|__|_____|____||__|__|__|__|__||__|__|"
# echo "     |__|     "
# if [ ! -d /omd/sites/mon ]; then
#   ./init.sh
# fi
# if ! id mon &>/dev/null; then groupadd -g 1000 mon
#     useradd -g 1000 -u 1000 -ms /bin/bash -d /omd/sites/mon mon
#     usermod -aG mon www-data
#     usermod -aG omd mon
#     omd enable mon
# else
#     omd start mon
#     sleep infinity

# omd start mon
# sleep infinity
# fi