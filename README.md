# Deepin Wallpapers

deepin-wallpapers provides wallpapers of dde

## Dependencies
You can also check the "Depends" provided in the `debian/control` file.

### Build dependencies
You can also check the "Build-Depends" provided in the `debian/control` file.

## Installation

### Build from source code

1. Make sure you have installed all dependencies.
```bash
sudo apt build-dep deepin-wallpapers
```

2. Build
```bash
mkdir build
cd build
cmake ..
make
```

3. Install
```bash
sudo make install
```
## Getting help

Any usage issues can ask for help via

* [Matrix](https://matrix.to/#/#deepin-community:matrix.org)
* [WiKi](https://wiki.deepin.org)
* [Forum](https://bbs.deepin.org)
* [Developer Center](https://github.com/linuxdeepin/developer-center/issues) 

## Getting involved

We encourage you to report issues and contribute changes

- [**Contribution guide for developers**](https://github.com/linuxdeepin/developer-center/wiki/Contribution-Guidelines-for-Developers-en) 

## License
deepin-wallpapers is licensed under [CC-BY-4.0](LICENSE).

Each directory under `nonfree` follows its own license.

- `nonfree/deepin-private/*` is licensed under [CC-BY-NC-ND-4.0](LICENSES/CC-BY-NC-ND-4.0.txt)
- `nonfree/unsplash.com/*` is licensed under [Unsplash license](https://unsplash.com/license)