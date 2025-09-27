# Ultramarine HTPC scripts

This repository contains HTPC mode scripts for Ultramarine, inspired by Bazzite.

The key difference from Bazzite is that the system is user-managed
and an addon to a standard Ultramarine installation, meaning we need to account
for all the variables and configurations that a user might have in their environment including but
not limited to:

- User-installed packages
- Display Managers
- Desktop Environments
- System mutability

This script handles some of this for a Fedora-based system.

## Installation

Run `make install` to copy the scripts to the appropriate directories, then use
`alternatives` to symlink them to the appropriate locations:

```bash
sudo alternatives --install /usr/libexec/os-branch-select os-branch-select /usr/libexec/um-htpc/um-htpc-branch-select 100
sudo alternatives --install /usr/lib/os-session-select os-session-select /usr/libexec/um-htpc/um-htpc-session-select 100
```

## Disabling Autologin

If you have previously enabled autologin using the `--enable-autologin` flag, you can disable it by doing the following:

### GDM

Edit `/etc/gdm/custom.conf` and remove or comment out the following lines:

```ini
[daemon]
TimedLoginEnable=true
TimedLogin=ultramarine
TimedLoginDelay=3
```

### LightDM

Remove `/etc/lightdm/lightdm.conf.d/20-autologin.conf`.

### SDDM

Remove `/etc/sddm.conf.d/zz-steamos-autologin.conf`.
