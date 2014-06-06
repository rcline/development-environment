# Ruby for Mac OS X Users

I've found the combination of [Homebrew], [chruby], and [ruby-install] to be the most logical and maintainable way to manage one or more [Ruby][] version(s).

## Install or Update to the latest Xcode

You can Install the latest version of Xcode via the app store `open -a "App Store"` or via the [Apple Developer Downloads][Downloads] site.

## Install Homebrew

[Install Homebrew] into your `$HOME` directory (instead of the default `/usr/local`).

## Install [chruby] and [ruby-install][]

    % brew install chruby ruby-install

  **NOTE**: if you were previously using RVM to manage ruby versions, you'll need to [Uninstall RVM][].

## Configure chruby into your shell

i.e. `~/.bashrc`, `~/.zshrc`, or equivalent.

    source $(brew --prefix chruby)/share/chruby/chruby.sh
    chruby 2

## Install [Ruby][]

        % ruby-install ruby
        % source $(brew --prefix chruby)/share/chruby/chruby.sh
        % chruby 2

When you type `chruby`  (without arguments) into your shell, you should see output similar to the following:

       * ruby-2.1.1

  **NOTE**: the `*` denotes the currently active Ruby version.

## Create a $HOME/.gemrc file

The following `$HOME/.gemrc` file is a good start:

    ---
    :update_sources: true
    :sources:
      - http://rubygems.org/
    :benchmark: false
    :bulk_threshold: 1000
    :backtrace: false
    :verbose: true
    gem: --no-ri --no-rdoc
    install: --no-document
    update: --no-document

## Troubleshooting

If you run into any trouble using the `ruby` or `irb` or `gem` commands, the first thing you should do is type `gem env` and send the output to someone that knows how Ruby works.

[Downloads]:        https://developer.apple.com/downloads
[ruby-install]:     https://github.com/postmodern/ruby-install#readme
[Ruby]:             http://www.ruby-lang.org
[chruby]:           https://github.com/postmodern/chruby
[RVM]:              https://rvm.io
[Uninstall RVM]:    http://stackoverflow.com/a/4747195/128346
[Install Homebrew]: https://github.com/wilmoore/homebrew-home
[homebrew]:         http://mxcl.github.io/homebrew
