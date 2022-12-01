import express from 'express'
import {router as userRouter} from './Router.js'

const app = express()

app.use(userRouter)


app.listen(80, () => {
    console.log('express server running at http://localhost/')
})