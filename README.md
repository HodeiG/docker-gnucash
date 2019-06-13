**Application**

[GNU Cash](http://www.gnucash.org/)

**Description**

GnuCash is personal and small-business financial-accounting software, freely
licensed under the GNU GPL and available for GNU/Linux, BSD, Solaris, Mac OS X
and Microsoft Windows.

Designed to be easy to use, yet powerful and flexible, GnuCash allows you to
track bank accounts, stocks, income and expenses. As quick and intuitive to use
as a checkbook register, it is based on professional accounting principles to
ensure balanced books and accurate reports.

**Build notes**

Latest stable GNU Cash release from Ubuntu 19.04 Linux repo.

Build it using the below command and see Usage section to create the container.

```
docker build -t "ubuntu19.04:gnucash" git@github.com:HodeiG/docker-gnucash.git
```

**Usage**

Start the docker image:
```
./docker_gnucash.sh
```

The above script will use your current username to launch gnucash.

**Access application**

If the application cannot connect the display try the below before startint the
container:

`xhost +LOCAL:`
