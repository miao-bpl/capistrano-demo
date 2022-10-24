# Capistrano Demo

Automated Deploys Rails application by [Capistrano](https://github.com/capistrano/capistrano)

## Installation

Cloning this repository:

```
$ git clone git@github.com:jinhucheung/capistrano-demo.git
```

Then enters `capistrano-demo` directory:

```
$ cd capistrano-demo
```

Copying database configuration file, changes it for you:

```
$ cp config/database.yml.example config/database.yml
```

Then regenerates `master.key` for production, links [How to regenerate the master key for Rails 5.2 credentials](https://gist.github.com/db0sch/19c321cbc727917bc0e12849a7565af9)

And then execute:

```
$ bundle install
```

## Usage

Deploys production environments:

```
$ cap production deploy
```

## Contributing

Bug report or pull request are welcome.

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)

Please write unit test with your code if necessary.

## License

The repository is available as open source under the terms of the [MIT License](MIT-LICENSE).