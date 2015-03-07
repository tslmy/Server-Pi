#利用SSH登入树莓派之后，先搞定图形界面远程控制的事情。一开始我选用了tightvncserver，但是发现每次启动这个server的时候，都会开启一个新的桌面空间（也就是说，不能与接HDMI的显示器共用同一个桌面。这要是想要找一个窗口可就麻烦了，所以还是选用x11vnc吧。
#sudo apt-get install tightvncserver #http://www.raspberrypi.org/documentation/remote-access/vnc/
sudo apt-get install x11vnc #http://jingyan.baidu.com/article/e5c39bf588889039d660337e.html
x11vnc -storepasswd #输入两次密码，密码将保存在/home/pi/.vnc/passwd文件里。
cd ~/.config
mkdir autostart
cd autostart
#然后创建x11vnc.desktop文件。请参见http://blog.csdn.net/tstarrow/article/details/38238203
sudo apt-get install ntfs-3g #给树莓派安装NTFS驱动
sudo apt-get install samba samba-common-bin #给树莓派安装SMB文件共享协议的*nix实现——Samba——以同Windows网络进行文件共享。
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old
sudo nano /etc/samba/smb.conf
#接下来请参见这篇文章：http://www.howtogeek.com/139433/how-to-turn-a-raspberry-pi-into-a-low-power-network-storage-device/
#https://www.davidschlachter.com/misc/netatalk3rpi：给树莓派安装Apple的网络存储服务。比起SMB协议来，好处就是可以将树莓派模拟成一个Time Machine无线备份器。但是我的树莓派才16GB的闪存，而电脑有250GB…还是不开了吧
sudo apt-get install xrdp #windows远程桌面服务~
sudo apt-get install atool #http://www.nongnu.org/atool/: Linux下的Universal Unzipper #解压就：atool -x 文件名
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh #http://ohmyz.sh/：安装一个更好的shell环境
sudo apt-get install python-qt4 #安装Python的一种图形界面开发包
curl -O https://bootstrap.pypa.io/get-pip.py #这个文件用来安装Python的一种包管理器：pip。
sudo python get-pip.py #安装pip
#Do not use "sudo apt-get install python-pip" directly, since is would install Python 2.6.
sudo apt-get install aria2 #安装Aria2: 下载服务。
#配置Aria2。请参见：http://ju.outofmemory.cn/entry/1352
#让Aria2下载服务自动启动。请参见：http://www.shumeipai.net/thread-19154-1-1.html
#现在开始安装OwnCloud：
cd ~
git clone git://github.com/petrockblog/OwncloudPie.git
cd OwncloudPie
chmod +x owncloudpie_setup.sh
sudo apt-get install -y dialog
sudo ./owncloudpie_setup.sh
#然后按照提示操作。在这之后，nginx也被安装上了。nginx服务程序的配置文件在但是OwnCloud自己的配置文件
sudo nano /etc/nginx/sites-enabled/default
#需要将 index index.php这行加上个index.htm啥的，看情况。