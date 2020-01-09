Run your PHPUnit tests in your Github Actions.
PHPUnit is a programmer-oriented testing framework for PHP. It is an instance of the xUnit architecture for unit testing frameworks.

Usage
Create your Github Workflow configuration in .github/workflows/ci.yml or similar.

name: CI

on: [push]

jobs:
  build-test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - uses: graychen/phpunit-action@v1.0.0
    # ... then your own project steps ...
Inputs
The following configuration options are available:

config Path to the phpunit.xml file (default: test/phpunit/phpunit.xml)
The syntax for passing in a custom input is the following:

...

jobs:
  unit-tests:

    ...

    - name: PHPUnit tests
      uses: graychen/phpunit-action@v1.0.0
      with:
        config: custom/path/to/phpunit.xml
If you require other configurations of phpunit, please request them in the Github issue tracker

© 2020 GitHub, Inc.# phpunit-action
