## dotfiles

My dotfiles for macOS.

### Bootstrapping

```sh
$ bash -c "$(curl -L https://raw.githubusercontent.com/hi85gh/dotfiles/master/bootstrap.sh)"
```

### Maintenance

```sh
$ nvm-upgrade

$ brew upgrade

# Check
$ brew bundle cleanup --global

# Cleanup
$ brew bundle cleanup --global --force
```
