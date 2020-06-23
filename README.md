# cl-erlport

## About

A WIP, early stages project for communicating between Common Lisp and Erlang
using [ErlPort](http://erlport.org).

## Supported Erlang Versions

ErlPort does not currently support Erlang versions 21.0 or higher. CL-ERLPORT
has been tested against the following versions of Erlang:

* 17.5
* 18.3
* 19.3
* 20.3

## Build

Start up the ErlPort instance using the default supported version of Erlang
(21.0):

```shell
$ make erlport-infra
```

To use an older version of Erlang:

```shell
$ ERL_VERSION=18.3 make erlport-infra
```

## Usage

### Check the Dev Environment

Run the tests:

```shell
$ make test
```

Start up ErlPort:

```shell
$ make erlport-infra
```

Make sure that the default use of ErlPort with Python is working:

```erlang
1> {ok, P} = python:start([{python, "python3"}]).
2> V = python:call(P, sys, 'version.__str__', []).
3> io:format("~s~n", [V]).
3.6.8 (v3.6.8:3c6b436a57, Dec 24 2018, 02:04:31)
[GCC 4.2.1 Compatible Apple LLVM 6.0 (clang-600.0.57)]
ok
```
