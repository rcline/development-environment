## Settings and Preferences

### System Preferences

###### Keyboard 
- F keys

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
% brew install npm
% brew install phantomjs
% brew install python
% brew install chruby ruby-install
% brew install imagemagick
```

### Ruby
```
% ruby-install ruby
% gem install compass
% gem install scss-lint
```

### Grunt CLI
```
% npm install --global grunt-cli
```

### TODO:
zsh:
- brew install zsh
- zprezto
- powerline zsh
- tmux
