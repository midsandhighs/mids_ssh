ssh-add-launchd
===============

I hate having to run ssh-add -A after log in on macOS to make sure my ssh-agent properly forwards my keys and I can run git operations. This solves that problem for me and it may for you, too.

*ssh_add_agent.sh* is a very simple script that runs the command 'ssh-add -A' and then prints to a file in /tmp that it was run.

*com.midsandhighs.ssh.plist* is a launchd plist that needs to be placed in `~/Library/LaunchAgents` and 

* Edited with a "Label" of your choice (I use `com.midsandhighs.ssh`)
* Edited with the correct path of the `ssh_add_agent.sh` script

