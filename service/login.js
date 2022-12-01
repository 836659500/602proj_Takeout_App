import {User} from '../entity/User.class.js'
import {R} from '../common/R.class.js'

export async function userInsert (req, db, body) {
    
    var cUser

    await new Promise((resolve, reject) => { 
        db.query('select * from user where phone = ?', body.phone, (err, results) => {
            if (err) return reject(err)
            if(results.length != 0) cUser = new User(results[0]['id'], results[0]['name'], results[0]['phone'], results[0]['code'], results[0]['sex'], results[0]['idNumber'], results[0]['status'])
            resolve(results)
        })
    })

    if (cUser == null) {

        var lastInsertId

        for (var i = 100; i >= 1; i--) {
            if (lastInsertId != null) break
            await new Promise((resolve, reject) => { 
                db.query('select * from user where id = ?', i, (err, results) => {
                    if (err) return reject(err)
                    if(results.length != 0) lastInsertId = i
                    resolve(results)
                })
            })
        }

        console.log('lastInsertId: ', lastInsertId)

        var nUser = new User(lastInsertId+1, null, body.phone, body.code, null, null, 1);

        var result = 0
        await new Promise((resolve, reject) => { 
            db.query('insert into user set ?', nUser.toJson(), (err, results) => {
                if (err) return reject(err)
                if (results.affectedRows == 1) {
                    result = 1
                }
                resolve(results)
            })
        })

        if (result == 1) {
            req.session.userId = lastInsertId+1;
            console.log(R.success(nUser.toJson()))
            return R.success(nUser.toJson())
        }
    } else {
        if (cUser.code == body.code) {
            req.session.userId = cUser.id
            console.log(R.success(cUser.toJson()))
            return R.success(cUser.toJson())
        }
    }
    return R.error("登录失败")
}



/*
{"code":1,"msg":null,"data":{"id":"1587677269574836225","name":null,"phone":"13853713107","sex":null,"idNumber":null,"avatar":null,"status":1},"map":{}}
*/
