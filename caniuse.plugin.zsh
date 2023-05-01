# Examples:
#   caniuse
#   caniuse gap
#   caniuse border-radius
#   caniuse webp avif

# set up the alias you want to use. Default is `cu`.
alias cu='caniuse'

caniuse() {
    local domain="https://caniuse.com/"
    local query
    if [ $# -eq 0 ]; then
        xdg-open ${domain}
    else
        for term in "$@"; do
            query=${term// /%20}
            xdg-open "${domain}?search=${query}"
        done
    fi
}