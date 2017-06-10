##KUBE-PROXY SCRIPTS for AUTOMATE USE KUBE-PROXY in WINDOWS 
###
### Authors: Dmitry Shelepnev (mitshel@mail.ru)
###

get_kc.cmd      - downloaded latest stable kubectl.exe from storage.googleapis.com
kube-proxy.cmd  - install admin.conf from kubernetes (need change IP addreess internal script),
                  and start proxy + portforward 4040 for weaveScope
				  