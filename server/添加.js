const fc=require('./function')
function randomNum(minNum,maxNum){ 
    switch(arguments.length){ 
        case 1: 
            return parseInt(Math.random()*minNum+1,10); 
        break; 
        case 2: 
            return parseInt(Math.random()*(maxNum-minNum+1)+minNum,10); 
        break; 
            default: 
                return 0; 
            break; 
    } 
} 
for(let i=0;i<5;i++){
fc.addparking("odpVJ5Lutx-arHao6e2yZXr_tUOs",4,"测试停车场","地点",randomNum(41652905,41918628)/1000000+","+randomNum(123191757,123669662)/1000000,1,"/upload/odpVJ5Lutx-arHao6e2yZXr_tUOs")
}