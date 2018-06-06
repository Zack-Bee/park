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

### /parks
#### Method: POST
#### Usage: 获取指定经纬度指定范围内的所有数据库中的停车场
#### Type: get
```
requestDataType: json
eg:
{
    longitude: 123.45,
    latitude: 67.89,
    range: 1 // 表示1公里, 暂时也只会用到1公里
}
```
```
responseDataTYpe: json
[
    {
        kind: 3,
        parkName: "王邦铮的停车场",
        price: 12,
        longitude: 123.45,
        latitude: 67.89,
        parkId: 123124,
        distance: 1000
    },
    {
        kind: 4,
        parkName: "王邦铮的停车场",
        price: 12,
        longitude: 123.45,
        latitude: 67.89,
        parkId: 123124,
        distance: 2000
    },
]
```

### /user/parks
#### Method: POST
#### Usage: 获取租赁用户的停车位信息, 3类用户查看停车场信息, 4类用户查看本周的预计收入
#### Type: get
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
    status: 0 | 1 | 2 // 0表示关闭, 1表示开放, 2表示审核中
}, {
    parkName: "zackbee",
    kind: 4,
    parkId: 10087,
    status: 2,
    expectedRevenue: 100.5
}]
```


#### Method: POST
#### Usage: 从数据库中删除指定的车位信息, 用于用户管理自己的车位
#### Type: delete
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
#### Type: open
```
requestDataType: json
eg:
3类用户
每周周一到周天
{
    type: "open",
    parkId: "13",
    openId: "3",
    openType: "weekly",
    startDay: "1",
    endDay: "7",
    startTime: "8:00",
    endTime: "22:00",
    price: 15,
    kind: 4,
    parkName: "王邦铮的停车场"
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
    price: 25,
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
    price: 25,
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
    price: 25,
    endTime: "22:00",
    kind: 4
}
```

#### Method: POST
#### Usage: 用于停止发布停车场
#### Type: close
```
requestDataType: json
eg:
{
    type: "close",
    openId: "1232142141",
    parkId: "12131231"
}
```

#### Method: POST
#### Usage: 用于获得停车场的详细信息
#### Type: detail
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
    status: true,
    openType: "weekly",
    startDay: "1",
    endDay: "7",
    startTime: "08:00",
    endTime: "21:00",
    revenue: 100
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
#### Type: get
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
#### Type: add
```
requestDataType: json
eg:
{
    openId: "123456789",
    type: "add",
    plateNumber: "甲A-12345"
}
```

### /user/history
#### Method: POST
#### Usage: 获取用户停车的历史记录, 正在使用的行程
#### Type: get
```
每次请求得到十条记录, delta表示离现在或者这个月里最近的信息批次,
假如有100条历史记录, 最新的记录序号为100, 则当delta为1时, 返回100-91的记录
requestDataType: json
eg:
{
    openId: "12345566",
    type: "get",
    filter: "all" | "month",
    delta: 1
}
```
```
responseDataType: json
eg
[
    {
        kind: 3 | 4 // 停车位的类别
        status: 1 | 2 | 3 | 4 | 0, // 1表示点击了停车按钮, 但还没有进入车位. 2表示
                                      已经进入车位, 正在停车. 3表示已经停车完毕, 还没有支付.4表示经支付完毕, 整个行程完成. 0表示已取消.
        parkLocation: "东北大学", // 表示停车场的大致位置
        startTime: "12:00" // 表示开始停车的时间,
        startDate: "08-27" // 开始停车的日期,
        endTime: "23:00" // 停车结束的事件, // 当状态为0时, endTime, endDate为取消行程                       // 的时间
        endDate: "08-28" // 停车结束的日期 // 如果行程未完成则是当前的日期, 当前的时间
        fee: 19.80, // 停车的费用
        recordId: "1929292" // 这条记录的编号,
        parkId: "31232" // 停车场的编号,
        parkLatitude: 123.45,
        parkLongitude: 678.9,
        plateNumber: "辽A-12345"
}]

```
```
在准备停车时：
requestDataType: json
eg:
{
    type: "add",
    openId: "12345566", //车主的
    carNumber："xxxx",
    latitude:xx,
    longitude:xx,
    parkId:123
}
```
```
在到达停车场时：
requestDataType: json
eg:
{
    type: "arrive",
    startTime: "12:00" // 表示开始停车的时间,
    startDate: "2018-08-27" // 开始停车的日期,
    carNumber："xxxx",
    parkId:123
}
```
```
在取消停车时：
requestDataType: json
eg:
{
    type: "cancel",
    openId: "12345566",
    carNumber："xxxx",
}
```
```
在停完车准备开走时：
requestDataType: json
eg:
{
    type: "done",
    carNumber："xxxx",
    parkId: xxx,
    endTime: "23:00",
    endDate: "2018-08-28",
}
```
```
在支付后：
requestDataType: json
eg:
{
    type: "pay",
    openId: "12345566",//车主的
    carNumber："xxxx",
    startTime: "12:00" // 表示开始停车的时间,
    startDate: "08-27" // 开始停车的日期,
}
```
