#!/bin/bash

ROOT_DIR="$(cd "$(dirname $0)" && pwd)"/

sudo docker run --rm -ti -p 80:80 -p 3306:3306 --name description_fast_demo \
    -v $ROOT_DIR/description:/var/www/mvc_frame/domain/description \
    -e 'ENV=development' \
    -e 'TIMEZONE=Asia/Shanghai' \
kikiyao/description_fast_demo start
