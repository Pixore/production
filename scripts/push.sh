#!/bin/bash

ssh-agent sh -c "
  ssh-add $DEPLOY_SSH &&
  cd build &&
  git config --get remote.origin.url
  git config user.name 'albizures' &&
  git config user.email 'albizures3601@gmail.com' && 

  git push --force deploy master;
"