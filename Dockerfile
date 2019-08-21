FROM debian:latest

LABEL "com.github.actions.name"="Laravel PHPUnit"
LABEL "com.github.actions.description"="A GitHub action to run your Laravel project's PHPUnit test suite."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/nathanheffley/laravel-phpunit-action"
LABEL "homepage"="https://github.com/nathanheffley/laravel-phpunit-action"
LABEL "maintainer"="Nathan Heffley <nathan@nathanheffley.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
