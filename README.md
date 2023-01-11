### Prerequisite

1. Make sure docker is running

### Before you start

1. Open the ubuntu terminal on "Windows Terminal"
2. Change the directory to the "/projects" folder. `cd ~/projects`
3. Clone starter repository by running `git clone https://github.com/novanda1/wordpress-docker-compose.git <your-name>` make sure to change `<your-name>` your _kebab-case_ name. For example, if your name is "John Doe" you should run

```sh
git clone https://github.com/novanda1/wordpress-docker-compose.git john-doe
```

4. Run the project by

```sh
# Again, change <your-name> to your kebab-case name. cd john-doe
cd <your-name>
docker compose up -d
[+] Running 3/3
 ⠿ Container john-doe-db-1         Started   1.1s
 ⠿ Container john-doe-wordpress-1  Started   1.8s
 ⠿ Container john-doe-adminer-1    Started   1.0s
```

If you see all containers Started, you should be good to go!

5. Try to run `ll` to your terminal, you should have the "root" and "wp-content" folders. All you need is to work on the "wp-content" folder don't touch the "root" folder unless it is necessary.

```sh
ll
-rw-r--r-- 1 novanda www-data  395 Jan 11 15:42 README.md
-rw-r--r-- 1 novanda www-data  750 Jan 11 14:00 docker-compose.yml
drwxr-xr-x 5 novanda www-data 4.0K Jan 11 14:00 root
drwxr-xr-x 4 novanda www-data 4.0K Jan 11 14:01 wp-content
```

6. Happy coding. Good luck!

### How to open this project

```sh
# File explorer
/mnt/c/Windows/explorer.exe .
# Visual Studio Code
code .
```

### The URLs

1. WordPress http://localhost:8000
2. Adminer http://localhost:8080

### Permission

If you facing a `permission denied` issue  
Make sure you have the access to the files/folders, or you can simply run this command below on your terminal

```sh
sudo chown -R <username> .
```

You can get your username by running `whoami` command on your terminal.

### How to add a plugin

In case when you install the plugin on the plugin page and WordPress asks you for FTP access.

```sh
# On /projects/your-name directory
sudo chown -R www-data:www-data .

# After you completed installing a plugin don't forget to bring back the access by running
sudo chown -R <username> .
```

### When you should and shouldn't ask?

Since we are running on Docker for this test and Docker isn't included in the test you can always ask Docker-related questions (e.g: Why I can't open my WordPress project on http://localhost:8000?)

And you should not ask for anything included on the test (e.g: Why are my CMB2 custom fields not shown?) you know the reason, that's the test :)
