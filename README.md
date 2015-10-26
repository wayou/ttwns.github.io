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

### Run development server with LiveReload

* Install LiveReload browser extensions
* Run with command:

```sh
$ guard
```

## Development with Docker

```sh
docker build -t ttwns-blog .
docker run --rm --volume=$(pwd):/usr/src/app -it -p 4000:4000 ttwns-blog
```

## License

The content of this project itself is licensed under the
[Creative Commons Attribution 3.0 license](http://creativecommons.org/licenses/by/3.0/us/deed.en_US),
and the underlying source code used to format and display that content
is licensed under the [MIT license](http://opensource.org/licenses/mit-license.php).
