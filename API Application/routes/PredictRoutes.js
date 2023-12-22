'use strict'
const express = require('express')
const Multer = require('multer');
const predict = require('../controllers/predictController')
const router = express.Router()

const multer = Multer({
    storage: Multer.memoryStorage()
});

router.post(`/api/v1/predict`, multer.single('file'), predict.diseasePredict)
router.get(`/api/v1/predict`, (req, res) => {
    res.status(404).json({ error: true, message: 'Ini API untuk fitur scan penyakit' });
});

module.exports = router



