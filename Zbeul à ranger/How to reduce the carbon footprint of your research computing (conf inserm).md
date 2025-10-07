---
inter: Nick Stouter
Affiliation: Sussex university
---
Data centres already accounts for 1 to 4% of global emissions
Advances in computing → more efficient but rebound effect with lowering prices

The more data on a serv, the more energy needed to operate and air condition it
More to backup
The more quickly it fills, the more we need to manufacture and transport new servers

#### Dark data and junk data

**Dark data :** potentially usable data that is poorly indexed and becomes functionally invisible over time
**Junk data :** data that is useless (often intermediary files) that takes up unnecessary space.

They made a plugin fMRIPrepCleanup => reduce storage space used by up to 95 % (specific to mri with only 5% used in actual analysis)

#### Efficiency of programming

shorter runtime = lower energy costs

avoiding sloppy coding (e.g. unnecessary loops within loops) => reduce computing energy

over many iterations, savings

Pereira et al 2021 => efficiency of progamming languages

CPU Energy usage => (cpu time x thermal design power)/ number of cpus
RAM energy usage => (max mem used x volatile memory consumption x runtime in secs)


**Power use effectiveness PUE** :
reflects energy overheads (lighting air, conditoning) used in an hpc data centre
For each 1 kWh used for computing, 0.28 are used for overheads

**Carbon intensity**
Grams of carbon dioxide equivalent emissions per kWh of energy. Lower when using renewable energy

#### **Carbon emissions  = (CPU + RAM energy) X PUE x Carbon intensity**


Embedded tools are probably best used with hardware isolation

For those who are interested in using embedded packages to estimate the carbon footprint of R code : We have created an R package that is a wrapper of  for the Green Algorithm calculator (ww.green-algorithms.org)  _Lannelongue et al. Adv. Sci. 2021_) for embedded use for analyses computed with R on a local computer, with French emission factors. We have used it for "standard" biostaticcal analyses in clinical research (which are not very carbon-intensive..) [https://github.com/thomasferte/CarbPack](https://github.com/thomasferte/CarbPack "https://github.com/thomasferte/carbpack")

[https://github.com/GreenScheduler/cats](https://github.com/GreenScheduler/cats "https://github.com/greenscheduler/cats")

GitHub - GreenScheduler/cats: CATS: the Climate-Aware Task Scheduler 🐈 🐈‍⬛