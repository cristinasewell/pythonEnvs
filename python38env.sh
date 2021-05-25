#!/usr/bin/env bash

# unset PYTHONPATH

# Setup Prod on DEV Channel Access environment
# This can be put in a if/case statement in the future?
source /afs/slac/g/lcls/epics/setup/envSet_prodOnDev.bash

# This is exported here only because we use it everywhere like lclshome and pydm
# Probably not a good idea, instead we could change lclshome and pydm bash scripts to 
# use full paths??...
export TOOLS="/afs/slac/g/lcls/tools/"

# Source conda the bash setup
CONDA_ROOT="/afs/slac/g/lcls/package/anaconda/2020.11/"
source "${CONDA_ROOT}/etc/profile.d/conda.sh"

# Set PYDM Environment setting
source /afs/slac/g/lcls/tools/script/setup_pydm_env.sh

# Some additional python tools that are not on conda-forge or pypi or github
# export PYTHONPATH=$PYTHONPATH:/afs/slac/g/lcls/tools/python/toolbox
export PYTHONPATH=/afs/slac/g/lcls/tools/python/toolbox:$PYTHONPATH
# Activate the environment
# Here we could have an if/case for different environements as well
conda activate /afs/slac/g/lcls/package/anaconda/envs/python3.8env

# Revert to Software Raster when SSH to avoid issues with QtQuick.
# The same was done with PyDM and this fixes Designer and friends.
if [ -n "SSH_CONNECTION" ]; then
	echo "Using SSH, reverting QtQuick rendering to Software."
	export QT_QUICK_BACKEND="software"
fi
