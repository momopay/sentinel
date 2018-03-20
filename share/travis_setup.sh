#!/bin/bash
set -evx

mkdir ~/.momocore

# safety check
if [ ! -f ~/.momocore/.momo.conf ]; then
  cp share/momo.conf.example ~/.momocore/momo.conf
fi
