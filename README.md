3proxy install script for Debian / Ubuntu VPS
======================================================

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/mityarko/3proxy/master/3proxyinst.sh
    chmod +x 3proxyinst.sh
    ./3proxyinst.sh

After install : CHANGE THE BLOODY DEFAULT USERNAME AND PASSWORD !!! (you can also change the port, default is 3128)

    nano /etc/3proxy/3proxy.cfg
    
Example change line inside 3proxy.cfg :
    
    users johndoe:CL:johndoepassword123
    
into this :

    users michael:CL:PAssWord99
    
to change the proxy username to "michael" and the password to "PAssWord99"
    
Once you've change the username / password you can start the proxy (or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/3proxy/3proxy /etc/3proxy/3proxy.cfg &

