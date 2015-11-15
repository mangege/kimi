Kimi
====
用Ansible来自动化配置你的Ubuntu 14.04服务器.

目前只完成Linode Library的[Getting Started](https://library.linode.com/getting-started) 和 [Securing Your Server](https://library.linode.com/securing-your-server)

环境要求
===
Ubuntu 14.04

注意
===
特别提示,公钥一定要对,此配置会 *禁用root帐号和密码登录,只允许证书登录* .  
而且iptables会 *只开放 22 80 等端口* .

示例
===

    ansible-playbook -i hosts roles/icestorm/base.yml
    ansible-playbook -i hosts roles/icestorm/omni_server.yml --ask-become-pass
    ansible-playbook -i hosts roles/icestorm/ruby20.yml --ask-become-pass
    ansible-playbook -i hosts roles/icestorm/peng_app.yml --ask-become-pass
