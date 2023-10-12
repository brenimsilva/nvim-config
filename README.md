# Fixes (windows)
## Grep
- https://github.com/sharkdp/fd
    -  choco install fd
- https://github.com/BurntSushi/ripgrep
    - choco install ripgrep

## Packer
1 - Primeiro, setar variavel de ambiente LOCALAPPDATA no windows
2 - Depois rodar um dos comandos abaixo dependendo do terminal
- https://github.com/wbthomason/packer.nvim
    - powershell git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
    - cmd git clone https://github.com/wbthomason/packer.nvim %LOCALAPPDATA%\nvim-data\site\pack\packer\start\packer.nvim
3 - Feche e abra nvim e digite :so no packer
    
://github.com/BurntSushi/ripgrep
# Shortcuts || Commands

## text editing
:%s/wordtoreplace/newword


##git
dv - visualizar git changes
dq quit git changes 
shift + S to delete all changes
cc to commit painel > write commit message :wq to commit
:G checkout -b feature/test 
:Gvdiffsplit or :Gvdiffsplit main



#Missing
Path auto complete ../../
auto imports
go to definition


