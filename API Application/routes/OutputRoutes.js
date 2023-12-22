'use strict'
const express = require('express')
const output = require('../controllers/outputController')
const router = express.Router()

router.get(`/api/v1/output`, output.getOutput)
router.post(`/api/v1/output`, output.postOutput)
router.get(`/api/v1/output/:id`, output.getOutputId)

module.exports = router