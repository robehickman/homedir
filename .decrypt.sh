#!/bin/bash

gpg -o .private.tar -d .private
tar -xvf .private.tar
