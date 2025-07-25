# Mac

## Settings and Preferences

### Check Clock Timezone

### Check For OS Updates

### Disable Screenshot Floating Preview

To disable the floating screenshot thumbnail preview on a Mac, open the Screenshot app (or use Cmd+Shift+5), go to "Options," and uncheck "Show Floating Thumbnail".

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
- Show sound in menu bar - always
- Play sound on startup - false

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
  - Brave
- IntelliJ
- Visual Studio Code
- Slack
  - Chrome extension: `Neutral Face Emoji Tools`
- SourceTree/GitHub Desktop
- Evernote
- Spectacle
  - Preferences
    - Login at startup
- iTerm2
- Docker
- Jolt

### Spotlight

Privacy -> add repos to search ignore list

### XCode
(This also installs git.)
```
xcode-select --install
```
First click "Get XCode" button, then after downloading and installing from apple store, run the above command again and click "Install".

```
sudo xcodebuild -license accept
```

More Git stuff:
https://github.com/augustoproiete/dotfiles/blob/master/git/.gitconfig-windows-template#L57-L59

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
- Install zsh: https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
- Install oh-my-zsh: https://ohmyz.sh/
- Install theme: https://github.com/romkatv/powerlevel10k#installation (do Oh My Zsh install)
- Plugin Autosuggestions: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
- Plugin Syntax Highlighting: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
- Iterm2 Profile Config:
  - https://stackoverflow.com/questions/42735929/how-to-delete-a-word-in-iterm-in-mac-os

### dotfiles
- Create folder `Sites` in home directory for server
- Clone this repo
- Copy over [dotfiles](https://github.com/rcline/development-environment/tree/master/dotfiles)

Hotkey `Cmd` + `Shift` + `.`

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

### Tools

https://stedolan.github.io/jq/  jq is a lightweight and flexible command-line JSON processor

If spotlight isn't working run:
```
sudo mdutil -E /
```

# Windows

### Mouse Scrolling
Open PowerShell as administrator
```
Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 0 | ForEach-Object { Set-ItemProperty $_.PSPath FlipFlopWheel 1 }
```

### Choco
- Install: https://chocolatey.org/
```
% choco install nodejs
% choco install git
```

### cmdr

### Setup

```
net use Z: "\\Mac\Home\" /persistent:yes
```
