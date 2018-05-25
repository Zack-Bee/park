### /user/parks

#### Method: POST
#### Usage: 用于获得停车场的详细信息
```
requestDataType: json
eg:
{
    type: "detail",
    openId: "123314",
    parkId: "23131231"
}

responseDataType: json
eg:
{
    kind: 3,
    parkName: "王邦铮的停车场",
    isOpen: true,
    openType: "weekly",
    startDay: "1",
    endDay: "7",
    startTime: "08:00",
    endTime: "21:00"
}
```


### /user/upload
#### Method: POST
#### Usage：用于用户提供停车场相关信息进行认证
```
发送地理位置和停车位的种类
requestDataType: json
eg:
{
    kind: 3,
    latitude: 123.45,
    longitude: 678.9,
    openId: 123456789,
    imageNumber: 10 // 图片的总数
}

上传的图片, 图片的名字即标号, openId(用于分辨用户)
requestDataType: multipart/form-data **not json**
eg: no eg

返回分配停车位的parkId
responseDataType: json
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
