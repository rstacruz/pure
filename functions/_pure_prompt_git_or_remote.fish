function _pure_prompt_git_or_remote \
    --description 'Print git info or remote info'
    set --local filesystem (_pure_get_filesystem)

    if test "$filesystem" = "nfs4"
        echo "($filesystem)"
    else
        _pure_prompt_git
    end
end
