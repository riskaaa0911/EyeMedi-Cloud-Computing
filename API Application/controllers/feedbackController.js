const db = require("../database/models")
const Feedback = db.Feedback;


const store = async (req, res) => {
    try {
        const savedFeedback = await Feedback.create(req.body);
        res
            .json({
                error: false,
                message: "Feedback berhasil disimpan",
                data: {
                    id: savedFeedback.id,
                    nama: savedFeedback.nama,
                    testimoni: savedFeedback.testimoni,
                    updatedAt: savedFeedback.updatedAt,
                    createdAt: savedFeedback.createdAt
                }
            })
            .status(200);
    } catch (error) {
        res
            .json({
                error: true,
                message: "Gagal menyimpan feedback",
                data: error
            })
            .status(422);
    }
};


const index = async (req, res) => {
    try {
        const result = await Feedback.findAndCountAll();
        const listFeedback = result.rows; // Ambil data feedback dari hasil query

        res.json({
            error: false,
            message: 'Feedback fetched successfully',
            listFeedback
        }).status(200);
    } catch (error) {
        res.json({
            error: true,
            message: 'Failed to fetch feedback',
            listFeedback: []
        }).status(422);
    }
};



module.exports = {
    index, store
}