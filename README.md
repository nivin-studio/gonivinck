# gonivinck
一个基于 `docker` 的 `go-zero` 本地开发运行环境。


## 使用
### 1. 按需修改 .env 配置
~~~env
# 设置时区
TZ=Asia/Shanghai
# 设置网络模式
NETWORKS_DRIVER=bridge


# PATHS ##########################################
# 宿主机上代码存放的目录路径
CODE_PATH_HOST=./code
# 宿主机上Mysql Reids数据存放的目录路径
DATA_PATH_HOST=./data


# MYSQL ##########################################
# Mysql 服务映射宿主机端口号，可在宿主机127.0.0.1:3306访问
MYSQL_PORT=3306
MYSQL_USERNAME=admin
MYSQL_PASSWORD=123456
MYSQL_ROOT_PASSWORD=123456
MYSQL_DATABASE=mall
MYSQL_TABLE_PATH=./sql

# Mysql 可视化管理用户名称，同 MYSQL_USERNAME
MYSQL_MANAGE_USERNAME=admin
# Mysql 可视化管理用户密码，同 MYSQL_PASSWORD
MYSQL_MANAGE_PASSWORD=123456
# Mysql 可视化管理ROOT用户密码，同 MYSQL_ROOT_PASSWORD
MYSQL_MANAGE_ROOT_PASSWORD=123456
# Mysql 服务地址
MYSQL_MANAGE_CONNECT_HOST=mysql
# Mysql 服务端口号
MYSQL_MANAGE_CONNECT_PORT=3306
# Mysql 可视化管理映射宿主机端口号，可在宿主机127.0.0.1:1000访问
MYSQL_MANAGE_PORT=1000


# REDIS ##########################################
# Redis 服务映射宿主机端口号，可在宿主机127.0.0.1:6379访问
REDIS_PORT=6379

# Redis 可视化管理用户名称
REDIS_MANAGE_USERNAME=admin
# Redis 可视化管理用户密码
REDIS_MANAGE_PASSWORD=123456
# Redis 服务地址
REDIS_MANAGE_CONNECT_HOST=redis
# Redis 服务端口号
REDIS_MANAGE_CONNECT_PORT=6379
# Redis 可视化管理映射宿主机端口号，可在宿主机127.0.0.1:2000访问
REDIS_MANAGE_PORT=2000


# ETCD ###########################################
# Etcd 服务映射宿主机端口号，可在宿主机127.0.0.1:2379访问
ETCD_PORT=2379


# PROMETHEUS #####################################
# Prometheus 服务映射宿主机端口号，可在宿主机127.0.0.1:3000访问
PROMETHEUS_PORT=3000


# GRAFANA ########################################
# Grafana 服务映射宿主机端口号，可在宿主机127.0.0.1:4000访问
GRAFANA_PORT=4000


# JAEGER #########################################
# Jaeger 服务映射宿主机端口号，可在宿主机127.0.0.1:5000访问
JAEGER_PORT=5000


# DTM #########################################
# DTM HTTP 协议端口号
DTM_HTTP_PORT=36789
# DTM gRPC 协议端口号
DTM_GRPC_PORT=36790
~~~

### 2.启动服务
- 启动全部服务
```bash
docker-compose up -d
```
- 按需启动部分服务
```bash
docker-compose up -d etcd golang mysql redis
```

### 3.运行代码
将项目代码放置 `CODE_PATH_HOST` 指定的本机目录，进入 `golang` 容器，运行项目代码。
~~~bash
docker exec -it gonivinck_golang_1 bash
~~~