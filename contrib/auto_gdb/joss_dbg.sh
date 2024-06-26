#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.josscore/jossd.pid file instead
joss_pid=$(<~/.josscore/testnet3/jossd.pid)
sudo gdb -batch -ex "source debug.gdb" jossd ${joss_pid}
