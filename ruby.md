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

Copy [.gemrc](https://github.com/rcline/development-environment/blob/master/dotfiles/.gemrc)

[ruby-install]:     https://github.com/postmodern/ruby-install#readme
[Ruby]:             http://www.ruby-lang.org
[chruby]:           https://github.com/postmodern/chruby
[RVM]:              https://rvm.io
[Uninstall RVM]:    http://stackoverflow.com/a/4747195/128346
