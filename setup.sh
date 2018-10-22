#!/bin/sh
echo "SetUp.sh  start -----------------------------------------------------"

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "    //  ,-.  ,-. ,------. ,-.      ,-.       ,------.      //"
echo "   //   | |__| | |  .---' | |      | |      '  .--.  '    //"
echo "  //    |  __  | |  '--,  | |      | |      |  |  |  |   //"
echo " //     | |  | | |  '---. | '----. | '----. .  '--'  .  //"
echo "//      '-'  '-' '------' '------' '------'  '------'  //"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"

echo "---------------------------------------- install --> HomeBrew ------------------------------------------------"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'success!'

echo "---------------------------------------- Install --> Shiftit--------------------------------------------------"
brew cask install shiftit
echo 'success!'

echo "---------------------------------------- Install --> iTeam2---------------------------------------------------"
brew cask install iterm2
echo 'success!'

echo "---------------------------------------- Install --> Vim------------------------------------------------------"
brew install vim
echo 'success!'

echo "---------------------------------------- Install --> tmux-----------------------------------------------------"
brew install tmux
echo 'success!'

echo "---------------------------------------- Install --> Oh My Zsh -----------------------------------------------"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ~/.zshrc
echo 'success!'

echo "---------------------------------------- Install --> PowerLine------------------------------------------------"
echo  "clone"
git clone https://github.com/powerline/fonts.git --depth=1
echo "install"
cd fonts
./install.sh
echo "clean-up a bit"
cd ..
rm -rf fonts
echo 'success!'

echo "---------------------------------------- Install --> dein-----------------------------------------------------"
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git \~/.vim/dein/repos/github.com/Shougo/dein.vim

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "    ＿"
echo "  （〇） ﾁﾘﾝ"
echo "   _｜_　 ﾁﾘ-ﾝ"
echo "  ｜・｜"
echo "  ｜風｜              !!!! 重要 !!!!"
echo "  ﾉ　 ﾉ"
echo " ~~~~"
echo ""
echo "oh-my-zshのセットアップが完了していません。"
echo "手動でiTerm2のフォントをpowerline対応のフォントに変えてください。"
echo "Shiftit のコマンドをカスタムしましょう"
echo ""
echo "vim を開いた状態で以下のコマンドを実行してください"
echo ":call dein#install()"
echo ""
echo "0% --------------------------------- 50% --------------------------------- 100%"
echo "==========================================================================="
echo ""
echo "ｷﾀ----ヽ│*ﾟ∀ﾟ*│ﾉ----!!!"
echo "-- Complete --"
