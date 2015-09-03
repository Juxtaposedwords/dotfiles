# JuxtaposedWords's dotfiles

### Installation
```bash
git clone https://github.com/Juxtaposedwords/dotfiles.git ~/.shellrc/dotfiles
bash ~/.shellrc/dotfiles/install.sh
```

My dotfiles should work on OSX and linux.  They're based on a fairly bare-bones Ubuntu setup, as that's what I spend most of my time inside.  On OSX, I use [brew](http://brew.sh), and as much of the GNU userland as possible.  I use Bash 4, Bash Completion 2, and GNU find.  These will be installed if you are on OSX.

I use [dotbot](https://github.com/anishathalye/dotbot) to manage my dotfiles, installing the repository itself into `.shellrc/dotfiles`.  I then symlink the directories into the .shellrc directory, which is what is actually included into PATH, and can even be loaded by other users.  The `.shellrc` may also have a `local.d` directory, which has machine-specific settings.

### Structure
The top-level directory in my home that contains my dotfiles is called `.shellrc`.  This directory contains the git repository itself and all of the necessary directories.  There can also be a local.d directory for machine-specific dotfiles.  Other directories are created as symlinks or copies as needed.

My `.bashrc` and `.bash_profile` are **not**  symlinks, which is the only unusual part of my dotbot setup.

