# ctf_xinetd

> A docker repository for deploying ctf problem

## configuration

Put files to floder `bin`. They'll be copied to /home/ctf. **Update the flag** at the same time.

The executable file must be `bin/challenge`.

You can also edit `Dockerfile, ctf.xinetd, start.sh` for custom your environment.

## deploy

```
make run PORT=9998
```
