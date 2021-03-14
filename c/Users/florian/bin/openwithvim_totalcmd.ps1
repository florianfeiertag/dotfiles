[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new($false)

$stopparser = '--%'
#[string]$command = 'c:\Users\Florian\AppData\Local\wsltty\bin\mintty.exe'
#[string]$1 = '--WSL="Debian" --configdir="C:\Users\Florian\AppData\Roaming\wsltty" --size 105,57 --position 0,7 -t "'
#[string]$2 = '" -e bash --login -c "vim "$(wslpath '''
#[string]$3 = ''')""'
$file=$args[0]
$filepath = Get-ChildItem -File $file | % { $_.FullName }

Write-Host "Hier ist die Datei:"
Write-Host $filepath

c:\Users\Florian\AppData\Local\wsltty\bin\mintty.exe --WSL=Debian --configdir="C:\Users\Florian\AppData\Roaming\wsltty" --size 105,57 --position 0,7 -t $filepath -e bash --login -c "vim ""$(wslpath 'c:\Users\Florian\Documents\Testördner\mm Testdätei')"""

#& $command $stopparser $1 $filepath $2 $file $3;

# vim "$(wslpath 'C:\Users\Florian\Documents\Testördner\mm Testdätei.txt')"

# bash --login -c "vim '$(wslpath "c:\Users\Florian\Documents\Testördner\mm Testdätei.txt")'"

# c:\Users\Florian\AppData\Local\wsltty\bin\mintty.exe --WSL="Debian" --configdir="C:\Users\Florian\AppData\Roaming\wsltty" -t '%1' -e bash --login -c "vim $(wslpath \"%1\")"
