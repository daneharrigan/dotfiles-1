#!/bin/bash

PATH=$(pip3 show ansible | grep Location | cut -d " " -f 2):$PATH
ansible-playbook -K main.yaml
