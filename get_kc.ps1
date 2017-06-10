$(
  $base = "https://storage.googleapis.com/kubernetes-release/release";
  $ver = iwr "$base/stable.txt" | % { $_.Content.Trim() };
  "$base/$ver"
) | % {
  iwr "$_/bin/windows/amd64/kubectl.exe" -OutFile kubectl.exe
}