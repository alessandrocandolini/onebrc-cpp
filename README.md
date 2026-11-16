# onebrc-cpp

## Build and run

```bash
nix develop -i --no-update-lock-file
make
make run
```

or build and run in one command:

```bash
nix develop -i --no-update-lock-file --command make run
```

`-i` clears inherited environment variables.
