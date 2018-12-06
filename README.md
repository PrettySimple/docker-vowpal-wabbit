Docker Vowpal Wabbit

This project provides a dockerised version of [Vowpal Wabbit](https://github.com/JohnLangford/vowpal_wabbit/wiki) (v8.6.1) based on an Alpine Docker image (v3.7).

## Pull the image

To pull the image:
```bash
docker pull supertracker/vowpal-wabbit
```

See https://hub.docker.com/r/supertracker/vowpal-wabbit/

## Alternatively, build the image

To build the image, clone this repository, and run:
```bash
cd docker-vowpal-wabbit/
docker build -t vowpal_wabbit .
```

## Example run

To run vowpal wabbit and let it listen to stdin:
```bash
docker run -i supertracker/vowpal_wabbit vw
```

## Add a new VW version

This has to be done from git. Update README.md and install_vw.sh and commit. Then run (after updating line 1 with the relevant version):
```bash
git tag -a x.x.x -m "VW version: x.x.x"
git push --folow-tags
```
