#! zsh

# nekonight Zsh prompt with source control management and

# Demo:
# ╭─🐱 virtualenv 🐱user at 🐱host in 🐱directory on (🐱branch {1} ↑1 ↓1 +1 •1 ⌀1 ✗)
# ╰λ cd ~/path/to/your-directory

icon_start="╭─"
icon_user=" 🐱 %B%F{yellow}%n%f%b"
icon_host=" at 🐱 %B%F{cyan}%m%f%b"
icon_directory=" in 🐱 %B%F{magenta}%~%f%b"
icon_branch=" on (🐱 $(git_prompt_info))"
icon_end="╰─%Bλ%b"

function git_prompt_info() {
  local branch_name=$(git symbolic-ref --short HEAD 2>/dev/null)
  local git_status=""
  if [[ -n $branch_name ]]; then
    git_status="$branch_name $(scm_git_status)"
  fi
  echo -n "$git_status"
}

function scm_git_status() {
  local git_status=""
  [[ -n $(git rev-list --count --left-right @{upstream}...HEAD 2>/dev/null) ]] && git_status+="%F{brown}↓%f "
  [[ -n $(git diff --cached --name-status 2>/dev/null) ]] && git_status+="%B%F{green}+%f%b"
  [[ -n $(git diff --name-status 2>/dev/null) ]] && git_status+="%B%F{yellow}•%f%b"
  [[ -n $(git ls-files --others --exclude-standard 2>/dev/null) ]] && git_status+="⌀"
  echo -n "$git_status"
}

PROMPT="${icon_start}${icon_user}${icon_host}${icon_directory}${icon_branch}
${icon_end}"
