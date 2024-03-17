oh-my-posh init pwsh --config $HOME/.config/oh-my-posh/themes/catppuccin.omp.json | Invoke-Expression

#setup zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# aliases
New-Alias vim nvim
Set-Alias -Name cd -Value z -Option AllScope
function config { git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $args}
