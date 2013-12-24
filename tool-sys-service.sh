description "node.js server" 

author      "kvz - http://kevin.vanzonneveld.net"   

# used to be: start on startup

# until we found some mounts weren't ready yet while booting: 

start on started mountall

stop on shutdown   

# Automatically Respawn: 

respawn

respawn limit 99 5   

script     

# Not sure why $HOME is needed, but we found that it is:     

export HOME="/root"       

exec /usr/local/bin/node /var/canku/app.js >> /var/canku/log/log.1 2>&1

end script   
