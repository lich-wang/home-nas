#!/bin/bash

# 定义挂载点和日志路径
mount_point="/home/linux/home-nas/data"
restart_script="/home/linux/home-nas/restart.sh"
log_file="/var/log/check_and_restart.log"

# 检查挂载状态
if mount | grep -q "$mount_point"; then
    echo "$(date): $mount_point is mounted. Executing restart.sh..." >> $log_file
    bash $restart_script
else
    echo "$(date): $mount_point is not mounted. Skipping restart.sh execution." >> $log_file
fi
