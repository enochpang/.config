New-Item -ItemType SymbolicLink -Path $Env:LOCALAPPDATA/nvim -Target ./nvim/
New-Item -ItemType Directory -Force -Path ./nvim/autoload
Invoke-WebRequest "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "./nvim/autoload/plug.vim"
