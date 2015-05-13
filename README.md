## Settings and Preferences

### Check Clock Timezone

### System Preferences

###### Keyboard 
- F keys

###### Sound
- Show sound in menu bar

### Finder

###### Preferences
- General
  + New Finder windows show: User Home
- Sidebar
  + uncheck All My Files
  + check MB User Home and Root

###### View
- Show Tab Bar
- Show Path Bar
- Show Status Bar

###### Settings
- Show View Options
  + Always open in column view
- Show dotfiles
```
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
```
- Disable Dashboard
```
defaults write com.apple.dashboard mcx-disabled -boolean true
killall Dock
```

### Applications
- Browsers
- Chrome
- Canary
- Firefox
- Opera
- Safari
- IntelliJ
- Skype
- JoinMe
- SourceTree
- TextMate
- Evernote
- Skype
- Java https://www.java.com/en/


### XCode and HomeBrew
Steps 1-4: https://github.com/wilmoore/system

### dotfiles
- Create folder `Sites` in home directory for server
- Clone this repo
- Copy over [dotfiles](https://github.com/rcline/development-environment/tree/master/dotfiles)
- Copy Apache [httpd.conf.md](https://github.com/rcline/development-environment/blob/master/apache/httpd.conf.md) code into /etc/apache2/httpd.conf
- Copy [hosts](https://github.com/rcline/development-environment/blob/master/apache/hosts) file into /etc/hosts
- restart apache `sudo /usr/sbin/apachectl restart`

### Brew Install
```
% brew install python
% brew install imagemagick
% brew install mongodb
```

### Ruby
```
% brew install chruby ruby-install
% ruby-install ruby
% gem install compass
% gem install scss-lint
% source $(brew --prefix chruby)/share/chruby/chruby.sh
% chruby 2
```

### nvm
https://github.com/brock/node-reinstall
```
% brew install nvm
% nvm use stable
% nvm install stable
% npm -v
% node -v
```

### Npm
```
% npm install -g grunt-cli
% npm install -g express
% npm install -g bower
% npm install -g underscore-cli
```

### Mongo
```
% brew install mongodb
% mkdir -p /data/db
% mongod
```

### TODO:
zsh:
- brew install zsh
- zprezto
- powerline zsh
- tmux
