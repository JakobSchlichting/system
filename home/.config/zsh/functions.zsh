loadenv() {
    if [ ! -f .env ]
    then
        echo "No environment file found!" >&2
        return 1
    fi
    set -a
    source .env
    set +a
    echo "Environment loaded"
}
