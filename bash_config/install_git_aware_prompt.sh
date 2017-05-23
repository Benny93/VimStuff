#!/bin/bash
pwd=$(pwd)

cd ~
mkdir .bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git
cd ~
CMD2='source "${GITAWAREPROMPT}/main.sh"'
CMD1='export GITAWAREPROMPT=~/.bash/git-aware-prompt'
#sed -i '1s/^/'$CMD2'\n/' .bashrc
#sed -i '1s/^/'$CMD1'\n/' .bashrc
#go back
cd $pwd
echo "Add to your .bash_profile/ .bashrc"
echo $CMD1
echo $CMD2
echo 'export PS1="\[\033[01;33m\]\u@\h\[\033[00m\] \[\033[01;35m\]\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \$\[\033[00m\]"'
echo "Or just"
echo "git_branch and git_dirty"

