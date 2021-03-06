## Code of Conduct

* Be kind to others ;
* Critic code not people.

## Release

Note, we follow [semver](https://semver.org/).

Todo upon release:
* [ ] updated `pure_version` (in [_conf.d/pure.fish_](conf.d/pure.fish)) ;
* [ ] create a commit only containing above edit ;
* [ ] create a git tag for said commit.

## Code Conventions for `pure`

* Use the idiomatic [`test` instead of `[`](httpsc://fishshell.com/docs/current/commands.html#test) brackets (as recommended by the documentation).
* Use **long form options**, _e.g._ `set --local`, as they are more explicit over cryptic 1-letter form.

### Naming Public Item

> Namespace your item with the prefix `pure_`.

* variable: `pure_my_variable`
* function: `pure_my_public_function`
* filename: `pure_my_public_file.fish`
* test file: `pure_my_public_file.test.fish`

### Naming Private Item

> Namespace your item with the prefix `_pure_` (begin with a single underscore).

* variable: `_pure_my_variable`
* function: `_pure_my_private_function`
* filename: `_pure_my_private_file.fish`
* test file: `_pure_my_private_file.test.fish`

### Local and Tools

> No need to use namespace when your variable variable is declare locally (`set --local`) or your file/test file is related to tooling (_installer.fish_, testing package managers install).

* filename: `my_tool.fish`
* test file: `my_tool.test.fish`