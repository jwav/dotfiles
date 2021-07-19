#!/usr/bin/python3

# TODO:
# - manual test: create a .foo and .foodir here, symlink in the home dir, commit, pull on the laptop, check that it works
# - this maneuver will need a config file, maybe a json to indicate "file X has to be symlinked at Y"
# - or maybe not. maybe all I need is to recreate here the same structure as the home directory, and then create symlinks at the corresponding location at $HOME

# - create a backup folder
# - create a foo file and a foo dir for testing until it works smoothly
# - copy each filepath in the backup folder. Overwrite if exists
# - copy each filepath in here and create a symlink at the original location


import shutil
import ntpath
import sys
import os

CONFIG_FILE = 'dotfilesrc'
HOMEDIR = os.path.expanduser('~')
THISDIR = os.getcwd()
# reminders
# os.path.basename

#TESTME
def path_leaf(path):
    head, tail = ntpath.split(path)
    return tail or ntpath.basename(head)

#tested
def parse_config_file(filename=CONFIG_FILE) -> list:
    with open(filename, 'r') as f:
        return [line.strip() for line in f.readlines()]

def exists(path):
    '''returns True if isfile, isdir, or islink'''
    op = os.path
    return op.isfile(path) or op.isdir(path) or op.islink(path)

# tested
def create_symlink(element, verbose=True):
    src = os.path.join(THISDIR, element)
    dest = os.path.join(HOMEDIR, element)
    if verbose:
        print("element:", element, os.path.exists(src))
        print("dest:", dest, os.path.exists(dest), os.path.islink(dest))
    if os.path.exists(src) and not os.path.islink(dest):
        is_dir = os.path.isdir(element)
        os.symlink(src, dest, target_is_directory=is_dir)

#TODO
def find_unmanaged_elements(elements:List):
    return []

if __name__ == '__main__':
    filepaths = sys.argv[1:]

    print('filepaths to handle:')
    print('\n'.join([f'- {fp}' for fp in filepaths]))

    print('config file content:')
    elements = parse_config_file()
    print('\n'.join([f'- {fp}' for fp in elements]))

    print("checking for new additions in the config file")

    print("creating symlinks")
    for element in elements:
        create_symlink(element)







