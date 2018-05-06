## http
### /login
#### Method: POST
#### Usage: 用于用户登陆, 获取openid
```
requestDataType: json
eg:
{
    code: 123456789
}

responseDataType: json
eg:
{
    openid: 123456789
}
```

### /user/parks
#### Method: GET
#### usage: 获取租赁用户的停车位信息, 用于车位主查看自己车位的情况
```
responseDataType: json
eg:
[{
    parkName: "王邦铮的停车场",
    kind: 3,
    allPark: 100,
    rentPark: 60,
    parkId: 10086,
    isOpen: true
}, {
    parkName: "zackbee",
    kind: 4,
    parkId: 10087,
    isOpen: true,
    isRented: false
}]
```
