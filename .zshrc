export CLICOLOR=1
export EDITOR='vim'
# USE PYTHON3 on Modern MACOSX
# If there's no alias for python and the default python isn't Python 3,
# then set an alias so that 'python' invokes Python 3.
if [ -z "$(alias python 2>/dev/null)" ]; then
  if ! python --version 2>&1 | grep -q 'Python 3'; then
    alias python=python3
  fi
fi
# If there's no alias for pip and the default pip isn't for Python 3,
# then set an alias so that 'pip' invokes pip3.
if [ -z "$(alias pip 2>/dev/null)" ]; then
  if ! pip --version 2>&1 | grep -q 'python 3'; then
    alias pip=pip3
  fi
fi
# USE HOMEBREW on MACOS instead of xcode 
# Prepend Homebrew global binary PATH if it's not already included
if [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi
# Prepend Homebrew-installed Python 3.13 binary to PATH if it's not already included
if [[ ":$PATH:" != *":/opt/homebrew/opt/python@3.13/libexec/bin:"* ]]; then
  export PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"
fi
