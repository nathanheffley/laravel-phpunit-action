# Laravel PHPUnit Action
A GitHub action to run your Laravel project's PHPUnit test suite.

## Usage
You can quickly start using this on your Laravel projects to run your test suite whenever a new commit is pushed with a file like the following placed in `.github/workflows/test.yml`
```yaml
name: Tests
on: [push]

jobs:
  phpunit:
    name: PHPUnit
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: nathanheffley/laravel-phpunit-action@master
```
