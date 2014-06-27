Kimi
====
用Ansible来自动化配置你的Ubuntu 14.04服务器.

目前只完成Linode Library的[Getting Started](https://library.linode.com/getting-started) 和 [Securing Your Server](https://library.linode.com/securing-your-server) , 后续会添加nginx+mysql+puma的自动化配置.

环境要求
===
Ubuntu 14.04


注意
===
请把 `base_setting.yml` 文件的vars部分改成你自己的.  
特别提示,公钥一定要对,此配置会 *禁用root帐号和密码登录,只允许证书登录* .  
而且iptables会 *只开放 22 80 等端口* .
