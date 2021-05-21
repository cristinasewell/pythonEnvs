# pythonEnvs

A simple repo to hold current and past conda env.yaml files. The `envs/python3.8env.yaml` file should provide a default set of python (python=3.8.8) modules to support ML, physics, operations, and controls.

## Create a development environment from a yaml file:
- Download and install a [miniconda environment](https://conda.io/miniconda.html)

- Clone this repo:
```
git clone https://github.com/slaclab/pythonEnvs.git
cd pythonEnvs
```
- Create the environment:
```
conda env create -n myenvname -f envs/python3.8env.yml
```

The `-n myenvname` is optional because the name is already defined in the yaml file so you can simply do:
```
conda env create -f envs/python3.8env.yml
```

## Create a development environment from scratch with a new python version:
- First add conda-forge as the highest priority channel:
```
conda config --add channels conda-forge
```

- Clone this repo:
```
git clone https://github.com/slaclab/pythonEnvs.git
cd pythonEnvs
```

- Create an environment:
```
conda create -y --name myenvname python=3.# --file envs/conda-packages.txt
conda activate myenvname
pip install -r envs/pip-packages.txt
conda deactivate
```

## Unpack a pre-built environment on a linux host:
Navigate to the **Releases** section on this repo and download an environment tarball (E.g.:`R3.8.8-0.0.0.tar.gz`).

Unpack the environment into directory `my_env` 
```
mkdir my_env
tar -xzf my_env.tar.gz -C my_env
```
Activate the environment. This adds `my_env/bin` to your path:
```
source my_env/bin/activate
```
Cleanup prefixes from in the active environment:
```
conda-unpack
```


Deactivate the environment to remove it from your path 
```
source my_env/bin/deactivate
```
