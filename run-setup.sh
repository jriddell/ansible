#!/bin/bash

set -xe

. variables.inc

ansible-playbook -i inventory -e "pass=${pass}" user.yml
