import {Category} from '../entity/Category.class.js'
import {R} from '../common/R.class.js'

export async function list (db) {
    var categories = new Array()

    await new Promise((resolve, reject) => { 
        db.query('select * from category', (err, results) => {
            if (err) return reject(err)
            for (var i = 0; i < results.length; i++) {
                var nCategory = new Category(results[i]['id'], results[i]['type'], results[i]['name'], results[i]['sort'], results[i]['create_time'], results[i]['update_time'], results[i]['create_user'], results[i]['update_user'])
                categories.push(nCategory.toJson())
            }
            resolve(results)
        })
    })

    return R.success(categories)
}


//{"code":1,"msg":null,"data":[{"id":"1397844263642378242","type":1,"name":"湘菜","sort":1,"createTime":"2021-05-27 09:16:58","updateTime":"2022-10-26 16:33:49","createUser":"1","updateUser":"1"},{"id":"1397844303408574465","type":1,"name":"川菜","sort":2,"createTime":"2021-05-27 09:17:07","updateTime":"2021-06-02 14:27:22","createUser":"1","updateUser":"1"},{"id":"1397844391040167938","type":1,"name":"粤菜","sort":3,"createTime":"2021-05-27 09:17:28","updateTime":"2021-07-09 14:37:13","createUser":"1","updateUser":"1"},{"id":"1413342269393674242","type":2,"name":"商务套餐","sort":5,"createTime":"2021-07-09 11:40:30","updateTime":"2021-07-09 14:43:45","createUser":"1","updateUser":"1"},{"id":"1413386191767674881","type":2,"name":"儿童套餐","sort":6,"createTime":"2021-07-09 14:35:02","updateTime":"2021-07-09 14:39:05","createUser":"1","updateUser":"1"},{"id":"1413341197421846529","type":1,"name":"饮品","sort":11,"createTime":"2021-07-09 11:36:15","updateTime":"2021-07-09 14:39:15","createUser":"1","updateUser":"1"},{"id":"1413384954989060097","type":1,"name":"主食","sort":12,"createTime":"2021-07-09 14:30:07","updateTime":"2021-07-09 14:39:19","createUser":"1","updateUser":"1"}],"map":{}}
