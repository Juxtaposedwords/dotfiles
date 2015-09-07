# JuxtaposedWords's dotfiles

### Installation
```bash
bash <( curl -fsSL  https://raw.githubusercontent.com/Juxtaposedwords/dotfiles/master/remote-setup.sh)
```
This setup drastically differs from TheDauthi.

My dotfiles should work on OSX and linux.  They're based on a fairly bare-bones Ubuntu setup, as that's what I spend most of my time inside.  On OSX, I use [brew](http://brew.sh), and as much of the GNU userland as possible.  I use Bash 4, Bash Completion 2, and GNU find.  These will be installed if you are on OSX.

### Lack of Dotbot
Given how much I have to tinker with  brew and applications, I found dotbot became a bit unwieldy. I kept wanting to have it perform only partial actions. What this means: My error handling is significantly worse. 

### Structure
The top-level directory in my home that contains my dotfiles is called `.shellrc`.  This directory contains the git repository itself and all of the necessary directories.  There can also be a local.d directory for machine-specific dotfiles.  Other directories are created as symlinks or copies as needed.

My `.bashrc` and `.bash_profile` are **not**  symlinks, which is the only unusual part of my dotbot setup.

### Purpose
This repo is brittle in comparison to TheDauthi's. It is meant to serve as image of sorts. 

