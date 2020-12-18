# Raku Container Action

This is a container action that uses Raku (formerly known as Perl 6)
to run tests on your code. Add a file just like this one to your
`.github/workflows` directory, calling it `test.yml` or whatever

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

See it in action, for instance
in [this repo](https://github.com/JJ/raku-unicode-security/actions).

## See also

Check
out
[this article on GitHub actions and Raku](https://raku-advent.blog/2020/12/13/day-13-helping-the-github-action-elves/) as
well as the [Raku-setup](https://github.com/Raku/setup-raku) action
from the official repos.
