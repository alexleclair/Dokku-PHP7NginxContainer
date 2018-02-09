# Dokku App for PHP7 & NGINX
## What is this?
So, you're running a bunch of dokku apps on a server, and have to deal with a legacy application with no source control, and need it to be up _right now_?

**Fear not!** 

This repository is just the barebones of a PHP7 & Nginx setup, and it looks for a `/storage` mounted drive. It then serves from that directory.
Any changes made in there will be reflected on your container.

## But this is now what Dokku is for!!!!
I know. I hate it too. But sometimes, when moving fast, having this kind of solution works okay. Just don't forget to bring your project into a real dev workflow, okay?

## How to use it
Quite simple :)

On your dokku instance: 

- Create a new app: `dokku apps:create my-new-app`
- Create a directory that will contain your code: `mkdir /home/dokku/my-new-app/public_html`
- Link that directory to the `/storage` directory on your container: `dokku storage:mount my-new-app /home/dokku/my-new-app/public_html:/storage`
- Add in your files to `/home/dokku/my-new-app/public_html` (or, simply `echo "<?php echo 'Hello from PHP';" > /home/dokku/my-new-app/public_html/index.php`)
- Build the app from this repo's tarball: `dokku tar:from my-new-app https://github.com/alexleclair/Dokku-PHP7NginxContainer/archive/master.tar.gz`

And voilà!

## Contributing
Pull Requests are more than welcome. This is quickly put-together _hack_ as I needed something like this kinda urgently.
