#!/bin/bash

#configファイルのパスを取得
CURRENT=$(cd $(dirname $0);pwd)
CONFIG_FILE_PATH=$CURRENT/"config.txt"



while read line
do
    #空白行を飛ばす
    if [ -z "$line" ]; then
        continue
    fi
    
    echo $line | grep -v '^#.*' > /dev/null
    if [ $? -eq 0 ];then
        echo $line
        # code --install-extension $var
    fi
done < $CONFIG_FILE_PATH

