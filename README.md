# [The Blog of The Traveling Twins](http://blog.ttwns.tw)

## Development

### Linters

Using git hooks with [overcommit](https://github.com/brigade/overcommit).

* [ScssLint](https://github.com/brigade/scss-lint): pre-commit
* [HTMLProofer](https://github.com/gjtorikian/html-proofer): pre-push

Make sure to run `overcommit --install` after you clone this repo.

#### Note

If you'd like to use git GUI, be sure to install the gems into your system Ruby.

```sh
sudo su -
gem install overcommit scss_lint html-proofer
```
