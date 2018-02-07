---
title: ReadMe
rightnav_menu: index-rightnav.md
---

# Alen's Finance web site

Note:

The files required to run a PHP version of Google App are now inside the main directory.
These are:

- app.yaml
- home.php


# History

The site was originally created as a static site. HTML only. Done using Frontpage with templates and includes.

Later it was translated into a DocPad-based template for static web site.

Then it was migrated into Harp.js-based template for static web.

The dynamic portion is used in order to host the site on Google infrastructure. The underlying platform was Python (2.5), then Java, then again Python (2.7), and then PHP.

## Prepare

Set HTTPS_PROXY variable if using proxy.

Make sure to have harp.js installed, preferrably globally.

For deployment, install App Engine from [here](https://developers.google.com/appengine/downloads#Google_App_Engine_SDK_for_Python).

## Deploy

The deployment steps are contained in 

    deploy.cmd 

script in scripts directory. The script uses Harp to compile the output into "out" directory, ready for deployment to App Engine.

Deployment is done to Google App Engine. The site to be deployed to Google Apps is in /out directory.

The deploy script will run the App Engine launcher, which is normally located at 

C:\Program Files (x86)\Google\google_appengine\


# Other

If metadata in templates is not being parsed correctly, save the .md file with UTF-8 encoding.

# Charts

http://freeserv.dukascopy.com/2.0/widged.html

Periods: 
1.  5 min
16. 1 day 

Time zones:
1. local

# File Types

Less files are compiled by Harp into .css. No need for any custom configurations. Simply create a .less file and in .html make a reference to .css with the same file name.

