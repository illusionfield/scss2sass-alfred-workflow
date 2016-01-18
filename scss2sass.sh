#!//usr/bin/env zsh

PATH="/usr/local/bin:/usr/local/sbin:$PATH"
## Functions ##
function installSass {
  #npm install
  return
}

function cleanSass {
  #rm -rf node_modules
  #installNpm
  return
}

function convertToSass {
  test -z "$(pbpaste)" && return
  pbpaste | "sass-convert" -F scss -T sass -s | pbcopy
  return
}

## Main ##
#[[ $1 == "clean" ]] && cleanNpm && exit 0

command -v pbpaste >/dev/null || exit 0
command -v pbcopy >/dev/null || exit 0
#test -e $(npm bin)/html2jade || installNpm

convertToSass
