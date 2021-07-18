# TODO:
# - manual test: create a .foo and .foodir here, symlink in the home dir, commit, pull on the laptop, check that it works
# - this maneuver will need a config file, maybe a json to indicate "file X has to be symlinked at Y"
# - or maybe not. maybe all I need is to recreate here the same structure as the home directory, and then create symlinks at the corresponding location at $HOME

# - create a backup folder
# - create a foo file and a foo dir for testing until it works smoothly
# - copy each filepath in the backup folder. Overwrite if exists
# - copy each filepath in here and create a symlink at the original location

#!/usr/bin/python3

import shutil
import ntpath
import sys
import os

def path_leaf(path):
    head, tail = ntpath.split(path)
    return tail or ntpath.basename(head)

# function rename
basename = os.path.basename

if __name__ == '__main__':
    filepaths = sys.argv[1:]
    print('filepaths to handle:')
    print('\n'.join([f'- {fp}' for fp in filepaths]))






