# Introduction
Herein lies my attempt at customization. Most developers will begin to tinker and customize their bash interaction. I use bash instead of another shell for it's prevalence on linux systems. I encourage others to use more feature-full shells such as Zshell if they're just working on their machine.

As a reminder:
* .bashrc -  is executed for interactive non-login shells
* .bash_profile - is executed for login shells
Note: Mac's terminal treats new login shell by default 

###Install.d
* Contains a number of shell scripts run by "install.sh"
* Shell script names follow the format: "[level]-[distro]-[desictription].sh"
* The levels, for this directory loosely correspond to:
  * 00 - directories, applies to all distros
  * 10 - system configurations, mainly for the Mac at this point
  * 20 - enviornment tinkering/setting up the package manager and installing packages
  * 30 - configuring UI tools intalled in level 20


# Installation
```bash
bash <( curl -fsSL  https://raw.githubusercontent.com/Juxtaposedwords/dotfiles/master/remote-setup.sh)
```
My dotfiles should work on OSX and linux.  They're based on a fairly bare-bones Ubuntu setup, as that's what I spend most of my time inside.  On OSX, I use [brew](http://brew.sh), and as much of the GNU userland as possible.  I use Bash 4, Bash Completion 2, and GNU find.  These will be installed if you are on OSX.

### Structure
The top-level directory in my home that contains my dotfiles is called `.shellrc`.  This directory contains the git repository itself and all of the necessary directories.  There can also be a local.d directory for machine-specific dotfiles.  Other directories are created as symlinks or copies as needed.

My `.bashrc` and `.bash_profile` are **not**  symlinks, which is the only unusual part of my dotbot setup.

