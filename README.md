# Safecoin app for Ledger Wallet

## Overview

This app adds support for the Safecoin native token to Ledger Nano S hardware wallet.

Current Features:
- Pubkey queries
- Parse, display and sign all Safecoin CLI generated transaction formats
- Blind sign arbitrary transactions (Enabled via settings)

## Prerequisites

Building requires the ledger-app-builder container.

https://github.com/LedgerHQ/ledger-app-builder

## Building

```bash
# docker can be replaced with podman or buildah without sudo
sudo docker run --rm -ti -v "$(realpath .):/app" ledger-app-builder:latest ./build.sh
```

binaries will be placed in release/nanoS and release/nanoX

## Installing

to install the app on a NanoS run:

```bash
release/nanoS/./install.sh
```

Note: It's currently not possible to sideload an app onto the NanoX.

## Emulating

The app can be run by the Ledger Speculos emulator:
https://github.com/LedgerHQ/speculos

The elf files are located at:
release/nanoS/bin/app.elf
release/nanoX/bin/app.elf
