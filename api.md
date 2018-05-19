## http
(一下内容的openId可能会改成数据库中自己存储的用户id, 有待商榷)
### /login
#### Method: POST
#### Usage: 用于用户登陆, 获取openId
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
    openId: 123456789
}
```

### /user/parks
#### Method: POST
#### Usage: 获取租赁用户的停车位信息, 3类用户查看停车场信息, 4类用户查看本周的预计收入

```
requestDataType: json
eg:
{
    openId: 123456789,
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
    expectedRevenue: 100.5
}]
```


#### Method: POST
#### Usage: 从数据库中删除指定的车位信息, 用于用户管理自己的车位
```
requestDataType: json
eg:
{
    type: "delete",
    parkId: "123456789",
    openId: "12313213"
}
```

#### Method: POST
#### Usage: 用于车位主发布车位信息, 开放车位, 3类用户可以选择车位的价格, 4类用户由我们确定
```
requestDataType: json
eg:
3类用户
每周周一到周天
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "weekly",
    startDay: "1",
    endDay: "7",
    startTime: "8:00",
    endTime: "22:00",
    price: 15,
    kind: 3
}

一次
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "once",
    startTime: "8:00",
    endTime: "22:00",
    price: 20,
    kind: 3
}

从指定日期到指定日期
eg: 十月八号到十一月十一号
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "date",
    startDay: "2018-10-8",
    endDay: "2018-11-11",
    startTime: "8:00",
    endTime: "22:00",
    price: 25,
    kind: 3
}

4类用户
每周周一到周天
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "weekly",
    startDay: "1",
    endDay: "7",
    startTime: "8:00",
    endTime: "22:00",
    kind: 4
}

一次
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "once",
    startTime: "8:00",
    endTime: "22:00",
    kind: 4
}

从指定日期到指定日期
eg: 十月八号到十一月十一号
{
    type: "open",
    parkId: "31232131",
    openId: "12345677",
    openType: "date",
    startDay: "10-8",
    endDay: "11-11",
    startTime: "8:00",
    endTime: "22:00",
    kind: 4
}
```

#### Method: POST
#### Usage：用于用户提供停车场相关信息进行认证
```
requestDataType
eg:
{
    type: "add",
    openId: "123456789",
    longitude: "13.323",
    latitude: "21.223",
    kind: 3
}
```

#### Method: POST
#### Usage: 用于停止发布停车场
```
requestDataType
eg:
{
    type: "close",
    openId: "1232142141",
    parkId: "12131231"
}
```

### /user/platenumber
#### Method: POST
#### Usage: 获取用户的车牌信息
```
requestDataType: json
eg:
{
    openId: "123456789",
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
