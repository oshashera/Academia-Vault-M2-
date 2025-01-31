---
animateur: Thomas Frazier
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



