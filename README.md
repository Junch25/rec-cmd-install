# rec-cmd-install
録画コマンド・ドライバーインストールスクリプト

## Usage / 使用方法
ライブラリインストール
```(bash)
sudo apt-get install -y cmake g++ git curl unzip gcc make autoconf automake libpcsclite-dev pcscd pcsc-tools libccid dkms

```
PLEX製のチューナーのドライバーを自動インストール
```(bash)
bash shell/px4_drv-install.sh
```

PX-Q1UDのドライバーを自動インストール
```(bash)
bash shell/pxq1ud-install.sh
```

libaribb25とrecpt1を自動インストール
```(bash)
bash shell/recpt1-install.sh
```

## スクリプトについて
以下3つをインストールを自動インストールできるShellScriptを作りました。  
※インストールスクリプトのソースですが、Forkしたものを利用しています。

| Name | URL |
| ---- | ---- |
| px4_drv | https://github.com/nns779/px4_drv |
| libaribb25 | https://github.com/tsukumijima/libaribb25 |
| recpt1 | https://github.com/stz2012/recpt1 |

## 動作について
Ubuntu server 20.04にて動作確認済となります。

自分の環境用に合わせていますので、適宜変更お願いします。
