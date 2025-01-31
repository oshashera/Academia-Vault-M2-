---
animateur: Thomas Brazier
created_date: 31 jan 2025
---
### Intro

FAIR = Findability, Accessibility, Interopability, Reuse
=> results hard to reproduce due to Library error and others (dont SetWD les gens sont fort quand même)

Virtuals environments (conda (provided by anaconda)) and DOCKERS

Environment = collection of softwares + dependencies, isolated or not from the OS
Common issues : not the same softwares, not same versions, etc....

Best practices => **code your envs in a file** : unambiguous, reproducible, versioned (under git)


### Conda vs containers ?

Scope of env 

Conda => use the env + system software if needed and found => **mutable**
Docker => strictly in docker, no search in OS => **immutable**, build other docker if update needed
But conda is more flexible

##### Keep it simple, CONDA

channel => where software is and who provided
dependencies 

Versions can change at each install/update (but u can ask for a specific version)

```
conda create 
conda install
```

interactive install, remove / add packages

```
conda env create/update -f myenv.yaml
```
channel + version in myenv.yaml => used it ↑ to create env à partir de ca

specifying a location for an environment
```
conda env create -prefix ./conda
```

conda env export / save env
(récup commande)

if not in anaconda, can be installed with pip and directly from github, can be specified in a .yaml
```
- autre package
- autre app
- pip : #install with pip, not conda
	- package 1
	- "--editable=git+https://github.com/.........." #installer via github
```

can build with 

```yaml
build :
	script :
		- git -clone --branche v1.X.X.X https://github....
		- cd nomduPackage
		- make
		- make clean
```


#### Containers

Not virtual env
- ["] "lightweight, standalone, executable package of software that includes everything needed to run an application : code, runtime, system tools, system libraries and settings"

Container are designed for **micro-services**
Keep it simple, small
One container = one service/software

##### containers : Docker vs Singularity

Docker is dominant in industry
Singularity is dominant in science

Main differencies => singularity causes less problems interacting / modifying root, but docker is more documented / advices / errors solutions 
when you have bigger env, you singularity it ?

Build with docker, run with singularity

https://hub.docker.com/
https://biocontainers.pro/

You can build containers with containers inside ?

##### How to build containers ?

**Dockerfile** = definition file

