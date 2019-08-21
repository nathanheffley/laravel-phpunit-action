#!/bin/sh -l

composer install --prefer-dist

cp .env.example .env

php artisan key:generate

php vendor/bin/phpunit
