rem ver=curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt
rem curl -LO https://storage.googleapis.com/kubernetes-release/release/$ver/bin/windows/amd64/kubectl.exe

powershell -Command Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
powershell -File get_kc.ps1