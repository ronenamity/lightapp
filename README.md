# lightapp
assignment lightapp

clone the repo,
script app_run_file.sh is the bash script that create the container, add the nodejs files to it, and run the container.
port 3000 is the port to test.

there is a webhook set to push changes to jenkins and run the job.
when a new job is running, the job stop the old container, and start the new one. (lightapp:latest)
