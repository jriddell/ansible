#!/bin/bash

set -xe

. variables.inc

mv ~/.gnupg/S.uiserver ~/tmp/ || true
#ansible-playbook -i inventory -e "pass=${pass}" user.yml
ansible-playbook -i inventory -e "pass=${pass} ansible_sudo_pass=${ansible_sudo_pass}" testing.yml
mv ~/tmp/S.uiserver ~/.gnupg/ || true
