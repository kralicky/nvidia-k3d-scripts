Scripts to build gpu-enabled k3s images to use in k3d

Adapted from docs at https://k3d.io/usage/guides/cuda/#build-the-k3s-image

Prerequisite Docker configuration (tested on Arch):

- If using cgroups v2, add `systemd.unified_cgroup_hierarchy=false` to kernel cmdline.
- Set `no-cgroups = false` in `/etc/nvidia-container-runtime/config.toml`
- Optional for k3s (required for rke): Set nvidia as the default container runtime in `/etc/docker/daemon.json`

Steps:
- Run `build.sh`. It will build and save an image called `k3s-gpu:v1.21.2-k3s1`
- Use the provided sample config when creating a new k3d cluster 
