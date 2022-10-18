# Portable Seafile setup


:warning: The preferred containers tools used are Podman and podman-compose, not
Docker and docker-compose. Using docker-compose should work, but it is not
extensively tested.


Runs on the port 57080 by default. Can be configured in the docker-compose.yml
file.

All of the dynamic data get stored in a `data/` folder. You could also only sync
this folder around.

Before and after restoring, you may need to `./fixperms.sh` to ensure you own
every files.

After restoring, if the URL of the new server is different, you will need to
login with an administrator account, head to the System Admin menu, then
"Settings", and update SERVICE_URL and FILE_SERVER_ROOT with the new URL.


- Create a backup
  ```bash
  ./backup.sh
  ```
  Backup will be found in the `backups/` folder

- Restore a backup
  ```bash
  7za x backup_file.7z
  ./fixperms.sh
  ```

  For Docker, you may need to
  ```bash
  docker-compose run seafile bash
  chown -R /shared
  ```

- Run
  ```bash
  podman-compose up

  # or

  ./start.sh # Runs down, then up
  ```

- Run attached to logs
  ```
  ./run-attached.sh
  ```
  Useful for using as a systemd service or the likes.
  
  An example systemd service unit file can be found at `seafile.service`.
