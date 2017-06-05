
# test behat or phpunit
echo "${*:5}"

case "$4" in
    behat)
        nimble bash "$project" "XDEBUG_CONFIG='' ./vendor/bin/behat --expand ${*:5}"
        ;;
    phpunit)
        nimble bash "$project" "XDEBUG_CONFIG='' ./vendor/bin/phpunit ${*:5}"
        ;;
esac
