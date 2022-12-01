import {shoppingCart as Cart} from '../entity/shoppingCart.class.js'
import {R} from '../common/R.class.js'

export async function list (req, db) {
    var cart = new Array()

    if (req.session.userId == null) return R.error("No User Id")

    await new Promise((resolve, reject) => { 
        db.query('select * from shopping_cart where user_id = ?', req.session.userId, (err, results) => {
            if (err) return reject(err)
            for (var i = 0; i < results.length; i++) {
                var item = new Cart(results[i]['id'], results[i]['name'], results[i]['image'], results[i]['user_id'], results[i]['dish_id'], results[i]['setmeal_id'], results[i]['dish_flavor'], results[i]['number'], results[i]['amount'], results[i]['creat_time'])
                cart.push(item.toJson())
            }
            resolve(results)
        })
    })

    return R.success(cart)
}


export async function add (req, db) {
    if (req.session.userId == null) return R.error("No User Id")

    var cart = new Cart(null, req.body.name, req.body.image, req.session.userId, null, null, null, 1, req.body.amount, null)
    var tmp = cart.toJson()

    var result = 0
    await new Promise((resolve, reject) => { 
        db.query('insert into shopping_cart set ?', tmp, (err, results) => {
            if (err) return reject(err)
            if (results.affectedRows == 1) {
                result = 1
            }
            resolve(results)
        })
    })

    if (result == 1) return R.success(cart.toJson())
    return R.error("No User Id")
}

//amount inage name