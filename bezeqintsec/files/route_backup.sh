#!/bin/bash
 
# Create a file to store the current routing table in. I leave it to the
# gentle user to delete tables and rules manually, but this file should
# store all of the routes and rules. At worst, you should be able to
# recover by running this file again.
BACKUP_ROUTE=/tmp/backup.route.sh
 
# Backup the routes
echo "starting to backup the routes and rules ...."
echo "#!/bin/bash" > $BACKUP_ROUTE
ip route show table all | grep -Ev '^local|^broadcast|^ff|^unreachable|^fe' | while read ROUTE; do
echo "ip route add $ROUTE" >> $BACKUP_ROUTE
done
# Backup the rules
ip rule show | sed -e 's/.*from/from/g' | while read RULE; do
echo "ip rule add $RULE" >> $BACKUP_ROUTE
done
 
# flush the cache.
echo "ip route flush cache" >> $BACKUP_ROUTE
# chmod +x $BACKUP_ROUTE
 
echo "The routes and rules have been backed up to $BACKUP_ROUTE"
echo "looking good ...."
## End backup
