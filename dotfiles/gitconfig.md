[user]
	name = Ryan Cline
	email = ryan.cline@twcable.com

[credential]
   # helper = osxkeychain
	helper = osxkeychain

[github]

[gh]


[core]
	excludesfile = /Users/RCline-MRPro/.gitignore_global
	editor = vim
	ignorecase = false

[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
	path = 

[mergetool "sourcetree"]
	cmd = /Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
	trustExitCode = true

[alias]
	# lb = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --max-count 10
	# lba = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
	# lbn = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --max-count
	# l = log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --max-count 10
	# la = log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
	# ln = log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --max-count
	type = cat-file -t
	dump = cat-file -p


	lba = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
	lbn = !git lba --max-count
	lb = !git lbn 10
	la = !git lba --all
	ln = !git la --max-count
	l = !git ln 10

[color]
	ui = auto

[rerere]
	enabled = false

[branch]
	autosetuprebase = always

[help]
   # autoCorrect = true

[grep]
   # lineNumbers = true
