# 存放 zsh 相关文件

## 安装配置Zsh
首先通过 apt 安装 zsh：
```
sudo apt install zsh
```

将 zsh 设定为默认 shell：
```
chsh -s /bin/zsh
```

重启后打开终端就会发现 shell 已经变成了 zsh。重启终端不行就要重启电脑

第一次打开 zsh 会有首次使用提示，这里我们按 0 跳过。接下来的提示中按 Y 回车即安装。
然而这时的 zsh 仍然是黑底白字，要让它变好看，我们需要对 zsh 进行配置。

OH-MY-ZSH
oh-my-zsh 是一个管理 zsh 配置的框架，评价也非常好。
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
如果无法下载安装脚本,如果遇到了网络连通性问题，可以使用以下替换命令：
```
REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh -c "$(curl -fsSL https://mirrors.ustc.edu.cn/misc/ohmyzsh-install.sh)"
```
安装完成后就可以看到 shell 不再是黑底白字，让人感到焕然一新，然而也许这样并不能让你满足。

我们可以修改 ~/.zshrc 里的这一行中的引号部分切换主题：
```
ZSH_THEME="robbyrussell"
```
如果只想试用某个主题，可以使用以下命令：
```
omz theme use robbyrussell
```
来临时试用某主题。

如果想随机主题
```
ZSH_THEME="random"
```
在终端使用 `zsh`来临时试用某主题。 

具体主题可以在 oh-my-zsh 的项目 Wiki（https://github.com/ohmyzsh/ohmyzsh/wiki/Themes） 中找到。 当然你也可以尝试自己做一个主题。

特殊的 icon 字符 ： https://www.nerdfonts.com/cheat-sheet

如果你不喜欢这些字体又想使用nerd font的图标，可以试试使用font-patcher为你当前的字体添加图标。直接在release里把FontPatcher.zip下载下来就行 ：https://github.com/ryanoasis/nerd-fonts/releases
