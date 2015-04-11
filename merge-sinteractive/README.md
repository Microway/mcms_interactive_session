##PURPOSE & USAGE

Interactive shell with X11 forwarding for SLURM.

Run sinteractive. It will prompt you for resources allocation values
using default values expressed in sinteractive.conf.
When your job starts, you'll find yourself in an X-forwarded screen(1)
session with a helpful splash message displayed.

You can tweak default values and some other config options with the included sinteractive.conf file.
These config options can also be overwritten by a user's ~/.sinteractive.conf file.

###REQUIREMENTS
* SLURM utilities installed on the target system
* gnu screen
 * scheduled and then sinteractive attachs to it
* htop (recommended)
 * started as a default tab in screen
 * can be omitted if you remove the htop line from sinteractive_screenrc.conf
* users must be able to SSH to compute nodes

###INSTALLATION

Ensure that all of the files (sans README.md) in this repo exist in the _same_ directory. It's advisable to have this directory exist in PATH. If you're just a user, you can just clone the repo somewhere in your home directory and run it from there since sinteractive doesn't really require anything privileged or fancy.

##Author & Credits

Scripts were originally written by  Pär Andersson (National Supercomputer Centre, Sweden)
and published in the SLURM FAQ.

Small changes made by Paul Mezzanini (Rochester Institute of Technology) - 2012

More significant changes made by Josh McSavaney (Rochester Institute of Technology) - 2014, 2015
