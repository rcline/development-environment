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
- restart apache `sudo /usr/sbin/apachectl restart`

### Brew Install
- npm
- node
- phantomjs
- python

### Ruby
- Follow [ruby.md](https://github.com/rcline/development-environment/blob/master/ruby.md)
- compass
```
% gem install compass
% gem install scss-lint
```

### Grunt CLI
```
% npm install --global grunt-cli
```

### TODO:
zsh:
- zprezto
- powerline zsh
- tmux
