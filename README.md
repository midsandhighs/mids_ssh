ssh-manage-launchd
===============

I use macOS but want to keep my ssh `.config` file device-agnostic. I hate having to run ssh-add after on macOS to make sure my ssh-agent properly forwards my keys when connecting to remote destinations. 

This solves that problem for me and it may for you, too.

_Tested on 10.13.x, 10.14.x, 10.15.x_

components
----------

*ssh_manage_agent.sh* - script that purges and re-adds identities to the `ssh-agent` then prints output

*com.ssh-manage-launchd.plist* - launchd plist that needs to be placed in `~/Library/LaunchAgents/`
* scheduled to run at user login and at 0700 every day

usage
-----
**REQUIRED**
* In *com.ssh-manage-launchd.plist*  
- * Edit **Label** to replace `$user` (I use `com.midsandhighs.ssh`)
- * Edit **ProgramArguments** with the correct path of the `ssh_add_agent.sh` script in the second portion of the array
**OPTIONAL**
* In *com.ssh-manage-launchd.plist*
- * Edit **StartCalendarInterval** with your own schedule

`Why don't you do this in cron?`
----------------
You can do cron on macOS, but `launchd` is officially supported and behaves better. 

To learn more, checkout: [launchd.info](https://launchd.info)