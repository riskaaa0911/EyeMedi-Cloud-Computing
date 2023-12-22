const db = require("../database/models")
const Output = db.Output;

const postOutput = async (req, res) => {
    try {
        const save = await Output.create(req.body)
        res.json(save).status(200)
    } catch (error) {
        res.json(error).status(422)
    }
}

const getOutput = async (req, res) => {
    try {
        const result = await Output.findAndCountAll()
        res.json(result).status(200)
    } catch (error) {
        res.json(error).status(422)
    }
}

const getOutputId = async (req, res) => {
    try {
        const id = req.params.id
        const data = await Output.findByPk(id)
        const result = data ? data : `${id} tidak terdapat di database`
        res.json(result).status(200)
    } catch (error) {
        res.json(error).status(422)
    }
}


module.exports = {
    postOutput, getOutput, getOutputId
}