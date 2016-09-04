3proxy install script for Debian / Ubuntu VPS
======================================================

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/ElmerALucier/3proxy/master/3proxy.sh
    chmod +x 3proxy.sh
    ./3proxy.sh

After install : CHANGE THE BLOODY DEFAULT USERNAME AND PASSWORD !!!

    nano /etc/3proxy/3proxy.cfg
    
Example change line inside 3proxy.cfg :
    
    users john:CL:doe
    
into this :

    users michael:CL:PAssWord99
    
to change the proxy username to "michael" and the password to "PAssWord99"
    
Once you've change the username / password you can start the proxy (or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/3proxy/3proxy /etc/3proxy/3proxy.cfg &

