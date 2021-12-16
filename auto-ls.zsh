auto_ls(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == true ]]; then
	git status
    else
	ls -AG --color=always
    fi
}

if [[ ! " ${chpwd_functions[*]} " =~ "auto_ls" ]]; then
    chpwd_functions=(auto_ls $chpwd_functions)
fi
