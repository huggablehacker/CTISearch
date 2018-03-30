[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
$userSearch = Read-Host -Prompt 'Insert Search Term'
[System.Diagnostics.Process]::Start("chrome.exe","https://www.abuseipdb.com/check/" + $userSearch)
[System.Diagnostics.Process]::Start("chrome.exe","https://www.scumware.org/report/" + $userSearch)
[System.Diagnostics.Process]::Start("chrome.exe","https://censys.io/ipv4/" + $userSearch)
[System.Diagnostics.Process]::Start("chrome.exe","https://whois.domaintools..com/" + $userSearch)
[System.Diagnostics.Process]::Start("chrome.exe","https://www.robtex.com/ip-lookup/" + $userSearch)
[System.Diagnostics.Process]::Start("chrome.exe","https://exchange.xforce.ibmcloud.com/ip/" + $userSearch)
Start-Sleep -s 3

For ($i=0; $i -le 17; $i++)
{
    [System.Windows.Forms.SendKeys]::SendWait("{TAB}")
    Start-Sleep -m 150
}
Start-Sleep -s 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
pause
