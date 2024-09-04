# zk47 prover运行方式(linux)

## tcp
nohup ./zk47Prover -g 0 -c tientan0068@gmail.com -d zkprover_1 -p stratum+tcp://proxy.zk47.io.54:10212 >> prover.log 2>&1 &

## ssl
nohup ./zk47Prover -g 0 -c tientan0068@gmail.com -d zktest_1 -p stratum+ssl://proxy.zk47.io.54:10213  >> prover.log 2>&1 &

## 参数说明
-c 账户名称,用自己的邮箱，后续通过邮箱作为账号登录系统查看算力
-d 矿机名称,自己定义