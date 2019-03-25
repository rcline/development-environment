## Settings and Preferences

### Check Clock Timezone

### Check For OS Updates

### System Preferences

###### General
- Show scroll bars: always
- Automatically hide and show the menu bar: false
- Click in the scroll bar to: Jump to the spot that's clicked

###### Dock
- Magnification: off
- Position: right
- Show recent applications in Dock: false

###### Keyboard 
- F keys
- Modifier keys (for external keyboard)
- Remove all auto text corrections

###### Sound
- Show sound in menu bar

### Finder

###### Preferences
- General
  + New Finder windows show: User Home
- Sidebar
  + uncheck All My Files
  + check MB User Home and Root
- Advanced
  + Show all filename extensions

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
  - Chrome Canary
  - Firefox
  - Opera
  - Safari
- IntelliJ
- Slack
- SourceTree/GitHub Desktop
- Evernote
- Spectacle
  - Preferences
    - Login at startup
- Java https://www.java.com/en/
- iTerm / Hyper


### XCode
```
xcode-select --install
```

### HomeBrew
- https://brew.sh/

### dotfiles
- Create folder `Sites` in home directory for server
- Clone this repo
- Copy over [dotfiles](https://github.com/rcline/development-environment/tree/master/dotfiles)

### Npm
removing node: https://github.com/brock/node-reinstall
```
% npm install -g n
% npm install -g grunt-cli
% npm install -g express
% npm install -g bower
% npm install -g underscore-cli
% npm install -g nodemon
% npm install -g bunyan
% npm install -g http-server
```

### Git
Adding PR fetching
<project-root>/.git/config
```
[remote "upstream"]
	url = git@github.com:<org>/<repo>.git
	fetch = +refs/heads/*:refs/remotes/upstream/*
	fetch = +refs/pull/*/head:refs/remotes/upstream/pr/*
```

### Shell
```
% brew install zsh
```

### Powerline
https://github.com/milkbikis/powerline-shell

### Mongo
```
% brew install mongodb
% mkdir -p /data/db
% mongod
```

