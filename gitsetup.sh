#!/bin/sh
echo "I take no blame if this destroys your repo, make backups"
cd ~/ece297/work/mapper
echo "This is a basic shell script which sets up your Github repo"
echo "Enter your email please: "
read emailname
echo "Save in default location and set a strong passphrase"
ssh-keygen -t rsa -b 4096 -C "$emailname"
exec 'ssh-agent' csh
ssh-add
echo "Copy the below output into your Github - Settings - SSH and GPG keys as an SSH key"
cat ~/.ssh/id_rsa.pub
echo "Enter the remote repo you want to push to in the format git@github.com:GithubUsername/GithubRepoName"
read reponame
git remote add hub $reponame
echo "To push to repo run 'git push -u hub master'"

