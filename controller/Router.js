import {userInsert as serviceLogin} from '../service/login.js'
import {list as serviceCategory} from '../service/category.js'
import {list as serviceCartList, add as serviceCartAdd} from '../service/cart.js'
import {list as serviceDish} from '../service/dish.js'
import {def as serviceAddress} from '../service/address.js'
import {submit as serviceSubmit} from '../service/submit.js'

import express from 'express'
import bodyParser from 'body-parser'
import path from 'path'
const __dirname = path.resolve();

export const router = express.Router()
import session from 'express-session'

router.use(session ({
    secret : "602",
    resave : false,
    saveUninitialized : true
}))

import mySql from 'mysql'
const db = mySql.createPool({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: '602',
})

router.use('/front',express.static(path.join(__dirname,'../front')))
router.use('/common/download',express.static(path.join(__dirname,'../common/download'))) 
router.use(bodyParser.urlencoded({extended : true}))
router.use(bodyParser.json())
//router.use(session())

router.post('/user/login', async (req, res) => {
    console.log("login")
    console.log(req.body)
    
    const body = req.body

    var result = await serviceLogin(req, db, body)
    
    console.log(req.session.userId)

    res.send(result)
})

router.get('/category/list', async (req, res) => {
    console.log("category")

    var result = await serviceCategory(db)

    res.send(result)
})

router.get('/shoppingCart/list', async (req, res) => {
    console.log("CartList")

    var result = await serviceCartList(req, db)

    res.send(result)
})

router.post('/shoppingCart/add', async (req, res) => {
    console.log("CartAdd")

    var result = await serviceCartAdd(req, db)

    res.send(result)
})

router.get('/dish/list', async (req, res) => {
    console.log("dish")
    console.log(req.query)

    const params = req.query

    var result = await serviceDish(params, db)

    res.send(result)
})


router.get('/addressBook/default', async (req, res) => {
    console.log("addressBook")

    var result = await serviceAddress(db)

    res.send(result)
})

router.post('/order/submit', async (req, res) => {
    console.log("submit")
    console.log(req.body)

    var body = req.body

    var result = await serviceSubmit(db, body)

    res.send(result)
})