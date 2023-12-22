'use strict'
const express = require('express')
const feedback = require('./FeedbackRoutes')
const auth = require('./authRoutes')
const predict = require('./PredictRoutes')
const output = require('./OutputRoutes')
const router = express()


router.get(`/api/v1/`, (_req, res) => {
    res.json({
        "message": "Welcome to restfullapi"
    })
})
router.use(feedback)
router.use(auth)
router.use(predict)
router.use(output)

module.exports = router