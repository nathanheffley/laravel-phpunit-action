FROM php:7.3-cli

LABEL "com.github.actions.name"="Laravel PHPUnit"
LABEL "com.github.actions.description"="A GitHub action to run your Laravel project's PHPUnit test suite."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/nathanheffley/laravel-phpunit-action"
LABEL "homepage"="https://github.com/nathanheffley/laravel-phpunit-action"
LABEL "maintainer"="Nathan Heffley <nathan@nathanheffley.com>"

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
