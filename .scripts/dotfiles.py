import shutil
import os
import sys
import git
from git import GitCommandError

FILES = [".Xresources", ".vimrc", ".vim", ".tmux.conf", ".bashrc", ".tmux", ".scripts", ".aliases", ".i3", ".fonts", ".screenlayout", "wallpaper.png"]
HOME = os.path.expanduser('~/')
DIR = HOME + "dotfiles/"

def commitfiles():
    print("Commiting changes to git")
    repo = git.Git(DIR)
    
    try:
        repo.commit("-am Updating dotfiles")
    except GitCommandError, err:
        print("Commit failed, empty commit? %s" % err)

    print("Pushing")
    try:
        repo.push()
    except GitCommandError, err:
        print("Push failed")

def update():
    repo = Repo(DIR)
    assert repo.bare == False
    repo.git.origin.fetch()

def backupfiles():
    for f in FILES:
        src = HOME + f
        dst = DIR + f
        print("copying %s to %s" % (src, dst))
        if os.path.isdir(src):
            if os.path.exists(dst):
                shutil.rmtree(dst)
            shutil.copytree(src, dst)
        else:
            shutil.copy2(src, dst)

def installfiles():
    print("installing")

def addfile(fileName):
    print("adding" + file)

def removefile(file):
    print("commiting")

def listfiles():
    for fi in FILES:
        src = HOME + fi
        print(src)

def help(): 
    print("usage: python dotfiles.py -cbiar ")
    print("-h - display this message")
    print("-c - commit to github.")
    print("-b - copy from home to git repo")
    print("-i - copy from git repo to home")
    print("-l - list watched files")
    print("-a - add file to backup list")
    print("-r - remove file from backup list\n")

    print("-a and -r requires a filename to be given. for example")
    print("python dotfiles.py -a .example.sh")
    exit(-1)

def usage():
    print("usage: python dotfiles.py -cbiar (filename)\n")
    exit(-1)

def exit(i):
    os._exit(i)


argc = len(sys.argv)
if(argc < 2): 
    usage()

action = sys.argv[1][1:] # remove the "-"

# action packed switch statement
if(action == "h"):
    help()
elif(action == "c"):
    commitfiles()
elif(action == "b"):
    backupfiles()
elif(action == "i"):
    installfiles()
elif(action == "a" or action == "b"):
    if(argc < 3):
        help()

    filename = sys.argv[2]
    if(action == "a"):
        addfile(filename)
    elif(action == "r"):
        removefile(filename)
elif(action == "l"):
    listfiles()
else:
    help()
