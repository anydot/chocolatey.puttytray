$packageName = 'PuttyTray'
$url = 'https://puttytray.goeswhere.com/download/v029/putty.exe' # download url

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$puttyPath = Join-Path $installDir 'putty.exe'
$checksum = "31ba5b51450e1b1fd2cc6038ceb107058068519e9535907ab06850ed23c989b3"

Get-ChocolateyWebFile "$packageName" "$puttyPath" "$url" -ChecksumType sha256 -Checksum "$checksum"
