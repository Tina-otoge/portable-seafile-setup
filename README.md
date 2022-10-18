# Portable Seafile setup


:warning: The preferred containers tools used are Podman and podman-compose, not
Docker and docker-compose. Using docker-compose should work, but it is not
extensively tested.


Runs on the port 57080 by default. Can be configured in the docker-compose.yml
file.


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
  ./attach-logs.sh
  ```
  Useful for using as a systemd service or the likes.
