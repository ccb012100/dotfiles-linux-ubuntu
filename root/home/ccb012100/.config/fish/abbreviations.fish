#!/usr/bin/env fish

abbr --add , command # easier way to call aliased commands
abbr --add back cd -
abbr --add cp cp -iv
abbr --add cpr cp -r
abbr --add efish exec fish
abbr --add func functions
abbr --add funcs functions
abbr --add his history
abbr --add jctl journalctl
abbr --add mv mv -iv
abbr --add py python3
abbr --add pym python3 -m
abbr --add python python3
abbr --add rgf rg --fixed-strings # verbatim search (i.e. disable regex)
abbr --add rgi rg --ignore-case # case-insensitive search
abbr --add rmr rm -r
abbr --add rmrf rm -rf
abbr --add sctl sysmtemctl
abbr --add uuid uuidgen --random
abbr --add zo zoxide

# cd
abbr --add ... 'cd ../..'
abbr --add .... 'cd ../../..'
abbr --add ..... 'cd ../../../..'
abbr --add ...... 'cd ../../../../..'

#: git
#:: k is easier to type than g
abbr --add k git
abbr --add ka git add
abbr --add kaa git aa
abbr --add kacm git acm
abbr --add kb git branch
abbr --add kbr git branch --remote
abbr --add kc git c
abbr --add kcm git cm
abbr --add kco git co
abbr --add kd git diff
abbr --add kds git ds
abbr --add kf git f
abbr --add kl git l
abbr --add kp git pull
abbr --add kps git push
abbr --add ks git status --short --branch
abbr --add ksl git status
abbr --add ksvv git status -vv

#: GitHub CLI
abbr --add ghb gh branch
abbr --add ghv gh pr view --web || gh repo view --web
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
