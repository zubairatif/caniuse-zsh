# CanIUse.com Command Line Search Utility
# Examples:
#     caniuse
#     caniuse border-radius
#     caniuse "alpha transparency" counters "canvas drawings" html svg

# caniuse() {
#     local domain="https://caniuse.com/"
#     local query

#     if [ $# -eq 0 ]; then
#         xdg-open ${domain}
#     else
#         for term in "$@"; do
#             query=$(python -c "import sys, urllib.parse as ul; print(ul.quote('${term}'));")
#             xdg-open "${domain}?search=${query}"
#         done
#     fi
# }
caniuse() {
    local domain="https://caniuse.com/"
    local query

    if [ $# -eq 0 ]; then
        xdg-open ${domain}
    else
        for term in "$@"; do
            query=${term// /%20}
            echo "Query: ${query}"
            xdg-open "${domain}?search=${query}"
        done
    fi
}