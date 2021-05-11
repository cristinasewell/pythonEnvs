# pythonEnvs

A simple repo to hold current and past conda env.yaml files. The `envs/python3.8env.yaml` file should provide a default set of python (python=3.8.8) modules to support ML, physics, operations, and controls.

To create a development environment from a yaml file:
- Download and install a [miniconda environment](https://conda.io/miniconda.html)
- `git clone https://github.com/slaclab/pythonEnvs.git`
- `cd pythonEnvs`
- `conda env create -n myenvname -f envs/python3.8env.yaml`
