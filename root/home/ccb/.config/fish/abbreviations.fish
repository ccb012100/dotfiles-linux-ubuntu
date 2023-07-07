#!/usr/bin/env fish

abbr --add , command # easier way to call aliased commands
abbr --add back cd -
abbr --add c code
abbr --add c. 'code .' # open current directory in VS Code
abbr --add cfish "code $__fish_config_dir" # open fish config directory in vscode
abbr --add chx chmod +x # make file executable
abbr --add cp cp -iv
abbr --add cpr cp -r
abbr --add difftastic difft
abbr --add e emacs
abbr --add ef exec fish
abbr --add efish exec fish
abbr --add fd 'fd -H' # show hidden files when doing fd search
abbr --add forgit git-forgit
abbr --add func functions
abbr --add funcs functions
abbr --add gob 'go build .' # build the go project in the cwd
abbr --add gor 'go run .' # run the go project in the cwd
abbr --add his history
abbr --add info pinfo
abbr --add jctl journalctl
abbr --add jl jless
abbr --add kc kubectl
abbr --add m micro
abbr --add md mdcat
abbr --add mdp mdcat --paginate
abbr --add mv mv -iv
abbr --add nts 'npx ts-node' # run local version of ts-node
abbr --add py python3
abbr --add pym python3 -m
abbr --add python python3
abbr --add readme mdcat --paginate README.md
abbr --add rgf rg --fixed-strings # verbatim search (i.e. disable regex)
abbr --add rgi rg --ignore-case # case-insensitive search
abbr --add rguuu rg -uuu # same as `rg --no-ignore --hidden --binary` & equiv. to `grep -r`
abbr --add rmr rm -r
abbr --add rmrf rm -rf
abbr --add rust 'echo -e "\nthink you mean _rusH_" ' # keep making this typo for some reason
abbr --add sctl sysmtemctl
abbr --add sesh 'tmux new-session -A -s sesh'
abbr --add uuid uuidgen --random
abbr --add v vim
abbr --add vi vim
abbr --add zd z dotfiles
abbr --add zo zoxide

# cd
abbr --add ... 'cd ../..'
abbr --add .... 'cd ../../..'
abbr --add ..... 'cd ../../../..'
abbr --add ...... 'cd ../../../../..'

#: git
#:: k is easier to type than g
abbr --add k git
abbr --add ka git a
abbr --add kaa git aa
abbr --add kaacm git aacm
abbr --add kacm git acm
abbr --add kau git au
abbr --add kaucm git aucm
abbr --add kb git b
abbr --add kbr git br
abbr --add kc git c
abbr --add kcm git cm
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
abbr --add ks git s
abbr --add ksl git sl
abbr --add ksvv git svv
abbr --add kundo git undo
abbr --add kunstage git unstage

#: GitHub CLI
abbr --add ghb gh branch
abbr --add ghv 'gh pr view --web || gh repo view --web'
abbr --add ghw gh watch

#: npm
abbr --add nr 'npm run'
abbr --add nrb 'npm run build'
abbr --add nrl 'npm run lint'
abbr --add nrestart 'npm run build && npm run start'
abbr --add nrs 'npm run start'
abbr --add nrt 'npm run test'

abbr --add spd sp --sort date
abbr --add spalb sp --type album