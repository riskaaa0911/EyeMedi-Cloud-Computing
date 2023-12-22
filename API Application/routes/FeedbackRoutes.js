'use strict'
const express = require('express')
const feedback = require('../controllers/feedbackController')
const router = express.Router()

router.get(`/api/v1/feedback`, feedback.index)
router.post(`/api/v1/feedback`, feedback.store)

module.exports = router