TIME_PROCESS=${EXECUTION_TIME_PROCESS:-"0 2 */3 * *"}  # 默认每3天2点执行
COMMAND_PROCESS="/usr/local/bin/python -u /aggregator/subscribe/process.py --all --overwrite --skip"
echo "$TIME_PROCESS $COMMAND_PROCESS >> $LOG_FILE_PROCESS 2>&1" >> /etc/cron.d/aggregator-cron
