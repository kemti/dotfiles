# PATH ------------------------------------------------------------------------
# $env.Path = ($env.Path | split row (char esep) | prepend "C:/Users/Tim/.config/carapace/bin")

# COMPLETERS ------------------------------------------------------------------

# CARAPACE
$env.Path = ($env.Path | split row (char esep) | prepend "C:/Users/Tim/.config/carapace/bin")

def --env get-env [name] { $env | get $name }
def --env set-env [name, value] { load-env { $name: $value } }
def --env unset-env [name] { hide-env $name }

let carapace_completer = {|spans|
  # if the current command is an alias, get it's expansion
  let expanded_alias = (scope aliases | where name == $spans.0 | get -i 0 | get -i expansion)

  # overwrite
  let spans = (if $expanded_alias != null  {
    # put the first word of the expanded alias first in the span
    $spans | skip 1 | prepend ($expanded_alias | split row " " | take 1 | str replace --regex  '\.exe$' '')
  } else {
    $spans | skip 1 | prepend ($spans.0 | str replace --regex  '\.exe$' '')
  })

  carapace $spans.0 nushell ...$spans
  | from json
}

# ZOXIDE
let zoxide_completer = {|spans|
    $spans | skip 1 | zoxide query -l ...$in | lines | where {|x| $x != $env.PWD}
}

let completer = { |spans| 
    match $spans.0 {
        z => $zoxide_completer
        zi => $zoxide_completer
        _ => $carapace_completer
    } | do $in $spans
}

# CONFIG ----------------------------------------------------------------------

$env.config = {
  show_banner: false # true or false to enable or disable the welcome banner at startup
  
	buffer_editor: "nvim"
  
  shell_integration: {
      # This is used to enable terminals to know where the prompt is, the command is, where the command finishes, and where the output of the command is
      osc133: false
  }

  completions: {
      external: {
        completer: $completer
      }
  }
}


source ($nu.default-config-dir | path join catppuccin-mocha.nu)
