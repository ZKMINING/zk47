# zk47 prover运行方式(linux)

## tcp
pool地址：proxy.zk47.io:10212 
nohup ./zk47Prover -g 0 -c xxxxxxxxx@gmail.com -d zkprover_1 -p stratum+tcp://proxy.zk47.io:10212 >> prover.log 2>&1 &

## ssl
pool地址：proxy.zk47.io:10213
nohup ./zk47Prover -g 0 -c xxxxxxxxx@gmail.com -d zkprover_1 -p stratum+ssl://proxy.zk47.io:10213  >> prover.log 2>&1 &

## 参数说明
-c 账户名称,用自己的邮箱，后续通过邮箱作为账号登录系统查看算力

-d 矿机名称,自己定义,避免重复

-g GPU的索引,从0开始,0,1,2,3,...

-p 矿池地址,支持tcp和ssl
