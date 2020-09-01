# strangevimrc
This is my personal vimrc file, feel to copy and paste to your hearts desire. I have created this Vim configuration out of inspiration found in [@JefferyWay's](https://github.com/JeffreyWay) series about Vim, which can be found [here](https://laracasts.com/series/vim-mastery).

# To use this vim configuration
My current vim configuration is dependent on Vundle for plugin functionality. If you don't know what Vundle is, you can learn more about it [here](https://github.com/VundleVim/Vundle.vim)! Otherwise you can simply install it with the following command.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
Once you have Vundle installed, you'll want to clone this repository.
```
git clone https://github.com/bengroneman/strangevimrc.git
```
The next step would be to copy the `.vimrc` and `plugins.vim` file to your relevant system files. You may do so (depending on your environment) with the following commands:
```
cd strangevimrc
```
```
cp .vimrc ~/.vimrc
```
```
cp plugins.vim ~/.vim/plugins.vim
```
Then you'll need to source your vimrc, and install those plugins.
```
:source ~/.vimrc
```
```
:PluginInstall
```

Once you restart vim you are off to the races!