##Easy-to-Use Login Sessions on HPC Clusters

###Purpose of this tool

Provide cluster users with an easy-to-use shell login to compute node(s). This
type of usage is typically called an 'interactive' session that is managed by
the cluster's Batch Scheduler / Resource Manager (e.g. SLURM, TORQUE).

The interactive sessions provide X11 Windows forwarding, multiple tabs (via the
ubiquitous screen utility) and resource monitoring (via htop/top).

![mcms interactive session login](https://cloud.githubusercontent.com/assets/4153509/25530770/79d1dba6-2bf5-11e7-8f88-493ccb04cb85.png)

###Usage

Ensure the `interactive_session` script is in your PATH (usually this is
already done for you by the system administrator). From your shell, run:
`interactive_session`

To see a full list of options, run:
`interactive_session -h`

The script will allocate the requested cluster resources, wait for them to
become available and then log you into the compute node. You may specify which
resources you require via command-line arguments (or via your own configuration
file: `~/.config/interactive_session.conf`). Your administrator may have also
set up a system-wide configuration file (but any options you specify will
over-ride the default settings in the system-wide configuration file).

###Installation Requirements

* SLURM utilities installed (srun, sinfo, squeue) on the target system
* GNU screen utility
 * Allows for multiple shell sessions within a single interactive login
* htop (recommended) or top (installed on almost any Linux version)
 * started as a default tab in screen (to monitor system usage)
 * can be omitted by removing the htop line from your config file
* SSH access to the allocated nodes must be allowed (global SSH can be off)

###Installation Instructions

These scripts are placed into the system paths and configuration directories
on both the Head/Front-End nodes and on the Compute Nodes. Only a couple files
are needed on the Front-End nodes; most scripts are on the Compute Nodes.

Installation RPMs can be created by running the following:
```
fpm -t rpm -s dir -a all                                                     \
    --name mcms_interactive_session_head -v **version**                      \
    --vendor Microway --license GPLv3                                        \
    --url https://github.com/Microway/mcms_interactive_session               \
    --description 'Easy-to-Use Login Sessions on HPC Clusters'               \
    --config-files etc/                                                      \
    etc/microway/interactive_session.conf                                    \
    usr/bin/interactive_session                                              \
    usr/libexec/microway/interactive_batch_script
```
```
fpm -t rpm -s dir -a all                                                     \
    --name mcms_interactive_session_nodes -v **version**                     \
    --vendor Microway --license GPLv3                                        \
    --url https://github.com/Microway/mcms_interactive_session               \
    --description 'Easy-to-Use Login Sessions on HPC Clusters'               \
    --config-files etc/                                                      \
    --depends screen                                                         \
    etc/ usr/
```

A DEB can be created by replacing the `-t rpm` above with `-t deb`.

###Author & Credits

This utility is maintained by Microway, Inc. as part of the MCMS toolkit
(Microway Cluster Management Software). http://www.microway.com

**This tool is a best-of-breed mashup of several existing projects:**

####sinteractive
Scripts were originally written by Pär Andersson (National Supercomputer Centre, Sweden) and published in the SLURM FAQ.

Small changes made by Paul Mezzanini (Rochester Institute of Technology) - 2012

More significant changes made by Josh McSavaney (Rochester Institute of Technology) - 2014, 2015

####interactive
Original script Copyright (C) 2013 Alan Orth
https://github.com/alanorth/hpc_infrastructure_scripts/
