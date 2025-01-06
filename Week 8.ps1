



# Dec 23, Optional exercise with the instructor




Update-Help
Get-Help export-csv -Online
Get-Help -Name export-csv

clear


Get-Process
Get-Process -Name notepad
Get-Process notepad
Get-Process | Select-Object -Property *
Get-Process | Select-Object -Property * | Out-GridView
Get-Process | Out-GridView

verb-noun | Select-Object -Property *
verb-noun | Select-Object -Property * | Out-GridView

Get-Process | Select-Object -Property * | Export-Csv -Path 'C:\Week 8\exportgetprocess1.csv'
Get-Process | Export-Csv -Path 'C:\Week 8\exportgetprocess2.csv'

$GetProc = Get-Process
$GetProc = Get-Process | Select-Object -Property * 

$GetProc
$GetProc | Select-Object -Property * | Out-GridView
$GetProc | Select-Object -Property * | Export-Csv -Path 'C:\Week 8\exportgetprocess3.csv'
$GetProc | Select-Object -Property * | Export-Csv -Path 'C:\Week 8\exportgetprocess4.csv' -NoTypeInformation
$GetProc | Select-Object * | Export-Csv 'C:\Week 8\exportgetprocess4.csv' -NoTypeInformation
$GetProc | Export-Csv 'C:\Week 8\exportgetprocess5.csv' -NoTypeInformation # Effective export command

$GetProc  | Select-Object -Property name
$ProcName = $GetProc | Select-Object -Property name
$ProcName1 = $GetProc.name

$ProcName   #Goal is to have a "List" of only Notepad Processes
$ProcName -notepad # cannot use original Get-Process [verb-noun] paramaters in a variable

# Works with $ProcName1 = $GetProc.name because it is an array list
$ProcName1 -eq 'notepad'
$ProcName1 -like 'notepad'

# works with $ProcName = $GetProc | Select-Object -Property name because it is an array table
`Get-Process | Where-Object {$_.PriorityClass -eq "Normal"}`
$ProcName | Where-Object {$_.Name -eq 'notepad'}
$ProcName | Where-Object {$_.Name -like 'notepad'}
$ProcName.name -eq 'notepad'


#Goal is to have a "List" of only Notepad Processes, all properties within the $GetProc variable and export into a unique .CSV file to be used with [fill-in the blank].
$GetProc | Where-Object {$_.Name -eq 'notepad'}
$GetProc | Where-Object {$_.Name -eq 'notepad'} | Export-Csv 'C:\Week 8\exportgetprocess_NotepadOnly1.csv' -NoTypeInformation #-WhatIf


# Goal is from the $GetProc variable, to have a "List" of the process names, only (1) process name for each process, no duplicates, no properties, no details and save it to a "List" file, name of your choice.
#Jocelyn Begazoleon
$GetProc.name | Select-object -unique | Export-Csv -path 'C:\Week 8\exportprocessname_unique.csv' -NoTypeInformation -WhatIf
$GetProc.name | Select-object -unique | Out-File -FilePath 'C:\Week 8\exportprocessname_unique.txt' -WhatIf
$GetProc.name | Select-object -unique | Out-File -FilePath 'C:\Week 8\exportprocessname_unique.txt' -WhatIf



# exercise, to define a variable to be used with "Processname"
$ProcName3 = 'Notepad','CalculatorApp','WindowsCamera'




$GetProc.processname


Get-Process | Get-Member | Out-GridView










