Import-Module posh-git
Import-Module oh-my-posh
Import-Module DirColors
Import-Module -Name Terminal-Icons

#temas: bubbles, bubblesline, patriksvensson, slim, pixelrobots, craver
#Set-Theme Zash
Set-PoshPrompt -Theme patriksvensson

# Alias
Set-Alias -Name v -Value nvim
Set-Alias ll ls
Set-Alias brave 'C:\Program Files\BraveSoftware\Brave-Browser\Application/brave.exe'
Set-Alias n 'C:\Users\LUISINHO\scoop\apps\neovide\current\neovide.exe'

# Autosuggestions
Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}


Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord

Set-PSReadLineKeyHandler -Key Alt+d -Function ShellKillWord
Set-PSReadLineKeyHandler -Key Alt+Backspace -Function ShellBackwardKillWord
Set-PSReadLineKeyHandler -Key Alt+b -Function ShellBackwardWord
Set-PSReadLineKeyHandler -Key Alt+f -Function ShellForwardWord
Set-PSReadLineKeyHandler -Key Alt+B -Function SelectShellBackwardWord
Set-PSReadLineKeyHandler -Key Alt+F -Function SelectShellForwardWord


