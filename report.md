#TODO: report stuff

#Installing saltstack goes here

# Make the init.sls file for packages using pkg.installed

I made the directory `~/salt` and `~/salt/apps` using mkdir. Then I proceeded to make the file `init.sls` in the /apps-directory:

```
$ cd h7/
$ mkdir salt
$ cd salt/
$ mkdir apps
$ cd apps/
$ micro init.sls

```

In the init.sls-file I made a small test for installing vlc:

```
~/h7$ cat salt/apps/init.sls 
vlc:
  pkg.installed

$ sudo cp -r ~/h7/salt/ /srv/salt/
$ sudo salt-call --local state.apply salt
local:
----------
          ID: vlc
    Function: pkg.installed
      Result: True
     Comment: The following packages were installed/updated: vlc
     Started: 07:24:32.078033
    Duration: 25266.501 ms
     Changes:   
#apparently installing vlc produces a 100+ lines of text, so I went ahead and cut them out
Summary for local
------------
Succeeded: 1 (changed=1)
Failed:    0
------------
Total states run:     1
Total run time:  25.267 s

```

Looked good, but just to be sure, I ran the command `vlc`. And lo and behold, VLC media player started:
![vlc](1.png)
