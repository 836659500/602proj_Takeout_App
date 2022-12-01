import express from 'express'
import {router as userRouter} from './Router.js'
var http = require('http')

http.createServer(function (req, res) {

}).listen(process.env.PORT)


const app = express()

app.use(userRouter)


app.listen(80, () => {
    console.log('express server running at http://localhost/')
})