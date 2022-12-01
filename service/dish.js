import {Dish} from '../entity/Dish.class.js'
import {R} from '../common/R.class.js'


export async function list (params, db) {
    var cart = new Array()

    await new Promise((resolve, reject) => { 
        db.query('select * from dish where category_id = ? and status = ?', [params.categoryId, params.status], (err, results) => {
            if (err) return reject(err)
            for (var i = 0; i < results.length; i++) {
                var item = new Dish(results[i]['id'], results[i]['name'], results[i]['category_id'], results[i]['price'], results[i]['code'], results[i]['image'], results[i]['description'], results[i]['status'], results[i]['sort'], results[i]['creat_time'], results[i]['update_time'], results[i]['create_user'], results[i]['update_user'], results[i]['is_deleted'])
                cart.push(item.toJson())
            }
            resolve(results)
        })
    })

    return R.success(cart)
}