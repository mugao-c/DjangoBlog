#! /bin/bash

# 此脚本用于安装博客部署所需的程序

# 检查命令执行是否成功
check_status() {
  if [ $? -ne 0 ]; then
	  echo $1 >&2
	  exit 2
  fi
}

# 工作目录
work_path=$(dirname "$PWD")

sudo service nginx stop

check_status "停止nginx失败，需要使用root权限执行此脚本"

sudo rm /etc/nginx/sites-enabled/nginx_test.conf

echo "已经停止nginx测试"