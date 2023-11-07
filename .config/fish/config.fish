# SET PATH AND JAVA_HOME VARIABLES
set -gx  PATH $PATH ~/.toolbox/bin
set -gx JAVA_HOME (/usr/libexec/java_home)
set -gx GH_TOKEN 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 

 
alias k=kubectl
 
# Git
alias g=git
alias gcam='git commit --amend'
alias gcm='git commit -m'
alias glg='git log --decorate'
alias gb='git branch'
alias gs='git status'
 
# CUSTOM PROMPT WITH GIT SUPPORT
# The fonts here are from https://github.com/primer/octicons/.
# Set you terminal to show non-ASCII fonts in Octicons or any font of your choice
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
 
 
set red (set_color red)
set gray (set_color -o black)
 
# WHAT TO SHOW
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_show_informative_status 'yes'
 
# WHAT COLOR TO SHOW
set __fish_git_prompt_color_branch yellow
 
# HOW TO SHOW
set __fish_git_prompt_char_stateseparator  " "
 
# SHOW DIRTY STATE
set __fish_git_prompt_char_dirtystate           "  "
set __fish_git_prompt_color_dirtystate          red
set __fish_git_prompt_char_invalidstate         "  "
set __fish_git_prompt_color_invalidstate        red
set __fish_git_prompt_char_stagedstate          "  "
set __fish_git_prompt_color_stagedstate         blue
 
 
# SHOW STASH STATE
set __fish_git_prompt_char_stashstate           " ⚡ "
set __fish_git_prompt_color_stashstate          blue
 
# SHOW UNTRACKED FILES
set __fish_git_prompt_char_untrackedfiles       "  "
set __fish_git_prompt_color_untrackedfiles      yellow
 
# SHOW UPSTREAM
set __fish_git_prompt_char_upstream_equal       ""
set __fish_git_prompt_char_upstream_behind      "  "
set __fish_git_prompt_color_upstream_behind     magenta
set __fish_git_prompt_char_upstream_ahead       "  "
set __fish_git_prompt_color_upstream_ahead      magenta
set __fish_git_prompt_char_upstream_diverged   "  "
set __fish_git_prompt_color_upstream_diverged  red
 
# SHOW INFORMATIVE STATUS
set __fish_git_prompt_char_cleanstate           "  "
set __fish_git_prompt_color_cleanstate          green
 
#theme
set theme_color_scheme gruvbox
 
function fish_prompt
  set last_status $status
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color e97ccc
  printf '\n  '
  set_color normal
end


