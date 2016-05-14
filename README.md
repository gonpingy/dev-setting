## 事前準備

```
sudo easy_install pip
sudo pip install ansible
```

## 実行

```
HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook mac.yml -i hosts -K
```

## 参考

* [homebrew - Package manager for Homebrew](http://docs.ansible.com/ansible/homebrew_module.html)
