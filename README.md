# Datastore-Emulator
This repository holds files to provide a datasore emulator images that starts up as fast as possible.

## Build
`docker build . -t sep-app/datastore-emulator`

## Default arguments

* *CLOUDSDK_CORE_PROJECT=default*
    * If you need a diferent project to your datastore, just set up the env `CLOUDSDK_CORE_PROJECT`.

## Runnig locally
`docker run -it -p 8081:8081 sep-app/datastore-emulator`

Check its availability
```Bash
curl localhost:8081
```
