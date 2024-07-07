#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.menelikcore/menelikd.pid file instead
menelik_pid=$(<~/.menelikcore/testnet3/menelikd.pid)
sudo gdb -batch -ex "source debug.gdb" menelikd ${menelik_pid}
