#!/bin/bash

env_flag=`grep "# xtb_6.2.3 environment settings" ~/.bashrc`
if [ "${env_flag}" == "" ]; then
  echo '# xtb_6.2.3 environment settings' >> ~/.bashrc
  echo 'export XTBHOME=${HOME}/xtb_6.2.3' >> ~/.bashrc
  echo 'export XTBPATH=${XTBHOME}/share/xtb:${XTBHOME}:${HOME}' >> ~/.bashrc
  echo 'export MANPATH=${MANPATH}:${XTBHOME}/share/man' >> ~/.bashrc
  echo 'export PATH=${PATH}:${XTBHOME}/bin' >> ~/.bashrc
  echo 'export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${XTBHOME}/lib' >> ~/.bashrc
  echo 'export PYTHONPATH=${PYTHONPATH}:${XTBHOME}/python' >> ~/.bashrc

  # export OMP_STACKSIZE=1G
  # export OMP_NUM_THREADS=4,1
  # export OMP_MAX_ACTIVE_LEVELS=4
  # export MKL_NUM_THREADS=4
  echo ' ' >> ~/.bashrc
fi
