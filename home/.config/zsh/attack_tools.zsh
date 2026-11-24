target() {
    if [[ -n $target ]]
    then
        echo $target
        return 0
    elif [[ -e ./target ]]
    then
        cat ./target
        return 0
    fi
    return 1
}
