Tools for create and upload android repositories stored in local to a stash (or github with some modifications) server.

One script will create the empty repositories using a file with a list of proyect names.
Other script will change config files to add a nre remote with the configuration stored in a template file.
Once exec, you can run repo forall git push.

create_project.sh project.list
modify_config.sh config.list
repo forall -c git checkout -b  master
repo forall -c git push NAME --all
repo forall -c git push NAME --tags
