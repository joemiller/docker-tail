docker-tail
===========

`tail -f` output from one or more docker containers, with each container's
output prefixed with container name and colored to improve readability.

Implemented in a few lines of Bash with minimal dependencies.

Inspired by docker-compose.

![screenshot](https://raw.githubusercontent.com/joemiller/docker-tail/master/screenshot.png)

Requirements
------------

- `bash` (Tested with 3.2.57 on OSX, and 4.3.11 on Linux)
- `docker`

Install
-------

Several options for installation, in order of recommendation:

- Using homebrew, install latest tagged release:

```
$ brew install joemiller/taps/docker-tail
```

- Using homebrew, install master branch:

```
$ brew install joemiller/taps/docker-tail --HEAD
```

- Or, clone and run `make install`:

```
$ git clone https://github.com/joemiller/docker-tail.git
$ cd docker-tail ; make install
```

- Or, curl install!

```
$ curl https://raw.githubusercontent.com/joemiller/docker-tail/master/docker-tail >./docker-tail
$ chmod +x ./docker-tail
```

Uninstall
---------

- If installed via homebrew: `brew uninstall docker-tail`
- If installed from `make install`: Run `make uninstall`

Usage
-----

- Tail the log output of specific containers:

```
$ docker-tail container1 container2
```

- Tail the log output of all running containers:

```
$ docker-tail -a
```

Author
------

Joe Miller, https://github.com/joemiller

TODOs
-----
- [x] makefile
- [x] shellcheck tests
- [] bats tests
- [] circle-ci
- [x] homebrew tap
- [x] readme
