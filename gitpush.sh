#!/bin/sh
echo "I take no blame if this destroys your repository, make backups"
echo "Pushing to UG machine and Github"
git push -u origin master
git push -u hub master
