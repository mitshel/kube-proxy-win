Set objShell = CreateObject("WScript.Shell")
Set objArgs = WScript.Arguments
objShell.Run "scp root@" + objArgs(0) + ":/etc/kubernetes/admin.conf .", 1, True
Set OBJ1 = objShell.Exec("kubectl --kubeconfig admin.conf get pod --selector=weave-scope-component=app -o jsonpath={.items..metadata.name}")
command = "cmd /K kubectl --kubeconfig admin.conf port-forward " & OBJ1.StdOut.ReadAll & " 4040"
objShell.Run command, 1, False
objShell.Run "cmd /K kubectl --kubeconfig admin.conf proxy" , 1, False
