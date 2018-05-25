### /user/parks


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
