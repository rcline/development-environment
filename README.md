# Mac

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
- Key repeat: fast
- Delay till repeat: short

###### Mouse
See [image](https://github.com/rcline/development-environment/blob/master/Screen%20Shot%202019-04-04%20at%2012.27.48%20PM.png)

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
- iTerm


### XCode
(This also installs git.)
```
xcode-select --install
```
First click "Get XCode" button, then after downloading and installing from apple store, run the above command again and click "Install".

### HomeBrew
- https://brew.sh/
```
% brew install node
```
yarn: https://stackoverflow.com/questions/44448084/how-do-i-change-the-version-of-yarn-used/53678671
```
% brew install yarn
```

### ZShell
- Setup: https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
- oh-my-zsh: https://ohmyz.sh/
- Theme: https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions
- Fonts and customizations: https://gist.github.com/kevin-smets/8568070


### dotfiles
- Create folder `Sites` in home directory for server
- Clone this repo
- Copy over [dotfiles](https://github.com/rcline/development-environment/tree/master/dotfiles)


### Npm
removing node: https://github.com/brock/node-reinstall
```
% npm install -g n
% npm install -g bunyan
% npm install -g http-server
```
Setup `n` permissions: https://github.com/tj/n/issues/416#issuecomment-417808320
```
% n lts
```


# Windows

### Choco
- Install: https://chocolatey.org/

### ZShell
- Setup: https://evdokimovm.github.io/windows/zsh/shell/syntax/highlighting/ohmyzsh/hyper/terminal/2017/02/24/how-to-install-zsh-and-oh-my-zsh-on-windows-10.html
