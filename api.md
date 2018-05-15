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
#### 已完成注释：根据openid作为ownerid查找此人全部停车场再根据每个停车场id作为parking查找每个停车场的停车时间方案，返回的json是全部停车场和全部方案，需要前端根据第二个json中的parking来将方案与停车场对应
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
    id:1,
    ownerId:2,
    kind:1,
    name: "王邦铮的停车场",
    location:"东北大学xxxx",
    lola（经纬度）: 12,23,
    number:100,
    lease（合同图片地址）:xxxx
}, {
    id:1,
    parking:1,
    time: xxx-xxx,
    price:12,
    rentnumber: 1
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
