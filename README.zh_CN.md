# Deepin Wallpapers

deepin-wallpapers 为深度桌面环境提供壁纸

## 依赖
请查看“debian/control”文件中提供的“Depends”。

### 编译依赖
请查看“debian/control”文件中提供的“Build-Depends”。

## 安装

### 构建过程

1. 确保已经安装了所有的编译依赖
```bash
sudo apt build-dep deepin-wallpapers
```

2. 构建
```bash
mkdir build
cd build
cmake ..
make
```

3. 安装
```bash
sudo make install
```
## 帮助
任何使用问题都可以通过以下方式寻求帮助：

* [Matrix](https://matrix.to/#/#deepin-community:matrix.org)
* [WiKi](https://wiki.deepin.org)
* [官方论坛](https://bbs.deepin.org)
* [开发者中心](https://github.com/linuxdeepin/developer-center/issues) 

## 贡献指南

我们鼓励您报告问题并做出更改

- [开发者代码贡献指南](https://github.com/linuxdeepin/developer-center/wiki/Contribution-Guidelines-for-Developers) 

## 开源许可证
deepin-wallpapers 在 [CC-BY-4.0](LICENSE) 下发布。

`nonfree`下的各个目录遵循其各自的许可证

- `nonfree/deepin-private/*` 在 [CC-BY-NC-ND-4.0](LICENSES/CC-BY-NC-ND-4.0.txt) 下发布
- `nonfree/unsplash.com/*` 在 [Unsplash license](https://unsplash.com/license) 下发布