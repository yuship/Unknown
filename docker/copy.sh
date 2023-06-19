#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20220814.sql ./mysql/db
cp ../sql/ry_config_20220510.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../unknown-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy unknown-gateway "
cp ../unknown-gateway/target/unknown-gateway.jar ./ruoyi/gateway/jar

echo "begin copy unknown-auth "
cp ../unknown-auth/target/unknown-auth.jar ./ruoyi/auth/jar

echo "begin copy unknown-visual "
cp ../unknown-visual/unknown-monitor/target/unknown-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy unknown-modules-system "
cp ../unknown-modules/unknown-system/target/unknown-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy unknown-modules-file "
cp ../unknown-modules/unknown-file/target/unknown-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy unknown-modules-job "
cp ../unknown-modules/unknown-job/target/unknown-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy unknown-modules-gen "
cp ../unknown-modules/unknown-gen/target/unknown-modules-gen.jar ./ruoyi/modules/gen/jar

