#!/usr/bin/env fish

# fish
abbr --add efish exec fish
abbr --add func functions
abbr --add funcs functions

# generic Linux utilities
abbr --add , command # easier way to call aliased commands
abbr --add back cd -
abbr --add chx chmod +x # make file executable
abbr --add cp cp -iv
abbr --add cpr cp -r
abbr --add his history
abbr --add jctl journalctl
abbr --add l less
abbr --add mv mv -iv
abbr --add sctl systemctl

# bat
abbr --add b bat
# brew
abbr --add brewup brew upgrade
# cd
abbr --add ... 'cd ../..'
abbr --add .... 'cd ../../..'
abbr --add ..... 'cd ../../../..'
abbr --add ...... 'cd ../../../../..'
# difftastic
abbr --add difftastic difft
# dotnet
abbr --add dn dotnet
abbr --add dnb dotnet build
# fd
abbr --add fd 'fd -H'
abbr --add fde 'fd --extension'
abbr --add fdf 'fd --type file'
abbr --add fdh 'fd -H' # show hidden files when doing fd search
# forgit
abbr --add fog git-forgit
abbr --add forgit git-forgit
# git
#: k is easier to type than g
abbr --add k git
abbr --add ka git a
abbr --add kaa git aa
abbr --add kaac git aac
abbr --add kac git ac
abbr --add kau git au
abbr --add kauc git auc
abbr --add kb git b
abbr --add kbr git br
abbr --add kc git c
abbr --add kco git co
abbr --add kd git diff
abbr --add kds git ds
abbr --add kf git f
abbr --add kfg git forgit
abbr --add kl git l
abbr --add kcob git cob
abbr --add kp git p
abbr --add kps git ps
abbr --add krest git restore
abbr --add kr git rebase
abbr --add kra git ra
abbr --add krc git rc
abbr --add kri git ri
abbr --add ks git s
abbr --add ksl git sl
abbr --add ksvv git svv
abbr --add kundo git undo
abbr --add kunstage git unstage
# GitHub CLI
abbr --add ghv 'gh pr view --web || gh repo view --web'
# golang
abbr --add gob 'go build .' # build the go project in the cwd
abbr --add gor 'go run .' # run the go project in the cwd
# jless
abbr --add jl jless
# kubectl
abbr --add kub kubectl
# lazygit
abbr --add lg lazygit
# mdcat
abbr --add md mdcat
abbr --add mdp mdcat --paginate
abbr --add readme mdcat --paginate README.md
# micro
abbr --add m micro
# npm
abbr --add nr 'npm run'
abbr --add nrb 'npm run build'
abbr --add nrl 'npm run lint'
abbr --add nrestart 'npm run build && npm run start'
abbr --add nrs 'npm run start'
abbr --add nrt 'npm run test'
# pinfo
abbr --add info pinfo
# python
abbr --add py python3
abbr --add pym python3 -m
abbr --add python python3
# ripgrep
abbr --add rgf rg --fixed-strings # verbatim search (i.e. disable regex)
abbr --add rgi rg --ignore-case # case-insensitive search
abbr --add rguuu rg -uuu # same as `rg --no-ignore --hidden --binary` & equiv. to `grep -r`
# playlist-search
abbr --add spd sp --sort date
abbr --add spalb sp --type album
# trash-cli
abbr --add del trash-put
abbr --add trash trash-put
# ts-node
abbr --add tsn 'npx ts-node' # run local version of ts-node
# uuidgen
abbr --add uuid uuidgen --random
# vim
abbr --add v vim
abbr --add vi vim
abbr --add zd z dotfiles
abbr --add zo zoxide
# vs code
abbr --add c code
abbr --add c. 'code .' # open current directory in VS Code
abbr --add cfish "code $__fish_config_dir" # open fish config directory in vscode
# wslu
abbr --add open wslview
abbr --add sctl sysmtemctl
