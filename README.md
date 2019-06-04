# sby-yosys-sv

Docker image for formal verification.
Image based on ubuntu with a patched `yosys` to support more SystemVerilog
features. Comes with `SymbiYosys` and `boolector`.

## Build

Call
```
make image
```
to build the docker image.

Or use
```
docker load -i sby-yosys-sv:18.04.docker.tar
```
if the image is available as an archive.

## Usage

The work directory of the image is at `/project`. This can be used as a target
for mounting data to the container.
