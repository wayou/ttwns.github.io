# [The Blog of The Traveling Twins](http://blog.ttwns.tw)

## Development

### Linters

Using git hooks with [overcommit](https://github.com/brigade/overcommit).

* [ScssLint](https://github.com/brigade/scss-lint): pre-commit
* [HTMLProofer](https://github.com/gjtorikian/html-proofer): pre-commit

Make sure to run the following command after you clone this repo, to initialize overcommit and sign custom hook.

```sh
overcommit --install
overcommit --sign pre-commit
```

#### Note

If you'd like to use git GUI, be sure to install the gems into your system Ruby.

```sh
sudo su -
gem install overcommit scss_lint html-proofer
```
