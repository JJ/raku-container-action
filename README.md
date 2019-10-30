# Raku Container Action

This is a container actions that uses Raku (a.k.a Perl 6) to run tests
on your code. Add file just like this one to your `.github/workflows`
directory, calling it `test.yml` or whatever

```yaml
on: [push]

jobs:
  test:
    runs-on: ubuntu-latest
    name: Tests this
    steps:
    - name: Checkout
      uses: actions/checkout@v1
    - name: Runs tests
      id: tests
      uses: JJ/raku-container-action@master
```

See it in action, for instance in [this repo](https://github.com/JJ/perl6-unicode-security/actions)
