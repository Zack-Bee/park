## http
(一下内容的openId可能会改成数据库中自己存储的用户id, 有待商榷)
### /login
#### Method: POST
#### Usage: 用于用户登陆, 获取openid
```
requestDataType: json
eg:
{
    code: 123456789
}
```
```
responseDataType: json
eg:
{
    openid: 123456789
}
```

### /user/parks
#### Method: POST
#### Usage: 获取租赁用户的停车位信息, 用于车位主查看自己车位的情况

```
requestDataType: json
eg:
{
    openid: 123456789,
    type: "get"
}
```
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
    allPark: 1,
    rentPark: 0
}]
```


#### Method: POST
#### Usage: 从数据库中删除指定的车位信息, 用于用户管理自己的车位
```
requestDataType: json
eg:
{
    type: "delete",
    parkId: "123456789"
}
```


### /user/platenumber
#### Method: POST
#### Usage: 获取用户的车牌信息
```
requestDataType: json
eg:
{
    openid: "123456789",
    type: "get"
}
```
```
responseDataType: json
eg:
[
    "甲A-12345",
    "鄂A-12345"
]
```

#### Method: POST
#### Usage: 添加用户的车牌信息
````
requestDataType: json
eg:
{
    openId: "123456789",
    type: "add",
    plateNumber: "甲A-12345"
}
```
