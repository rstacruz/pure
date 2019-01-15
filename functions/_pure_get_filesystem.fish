function _pure_get_filesystem
    set --local device (df . | tail -n -1 | awk '{ print $1 }')
    set --local filesystem (findmnt -o SOURCE,FSTYPE -P | grep "SOURCE=\"$device\"" | awk '{ print $2 }' | cut -d'"' -f2)
    echo $filesystem
end
