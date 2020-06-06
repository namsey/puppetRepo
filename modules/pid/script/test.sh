ps -ef | grep httpd | (head -n 1 ) | awk '{ print $3}'
