const owner=require('../server/models/owner');
const parking=require('../server/models/parking');
const parkingtime=require('../server/models/parkingtime');

(async () => {
    var o = await owner.create({
        name: 'John',
        gender: false,
        idcard: '411527199822222222'
    });
    console.log('created: ' + JSON.stringify(o));
    var p1 = await parking.create({
        ownerId: o.id,
        name: '某停车场',
        location: '某地',
        lease: 'xxx...图片地址',
        number: '1'
    });
    console.log('created: ' + JSON.stringify(p1));
    var p2 = await parking.create({
        ownerId: o.id,
        name: '某停车场',
        location: '某地',
        lease: 'xxx...图片地址',
        number: '100'
    });
    console.log('created: ' + JSON.stringify(p2));
    var tp1 = await parkingtime.create({
        parking: p1.id,
        time: '18:00-8:00',
        price: '4'
    });
    console.log('created: ' + JSON.stringify(tp1));
    var tp2 = await parkingtime.create({
        parking: p2.id,
        time: '18:00-8:00',
        price: '10'
    });
    console.log('created: ' + JSON.stringify(tp2));
})();