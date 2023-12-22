
const db = require("../database/models")
const Users = db.Users
const jwt = require('jsonwebtoken')
const passwordHash = require('password-hash')
require("dotenv").config()

const register = async (input, res) => {
    try {
        const existingUser = await Users.findOne({ where: { email: input.email } });

        if (existingUser) {
            // If the email already exists in the database
            res.status(422).json({ error: true, message: 'Email already exists. Please login.' });
        } else {
            // Create a new user if the email doesn't exist
            const save = await Users.create(input);
            res.status(200).json({ data: save, error: false, message: 'Registration successful' });
        }
    } catch (error) {
        res.status(422).json({ error: 'Registration failed', message: error.message });
    }
};

const authentication = async (req, res) => {
    try {
        const email = req.body.email.trim();
        const password = req.body.password.trim();
        const cekEmail = await Users.findOne({ where: { email: email } });
        const fetchResult = cekEmail.dataValues
        const verify = passwordHash.verify(password, fetchResult.password);

        /*  cek apakah password yanng di input sama dengan yang ada didatabase
            lalu di cocokan menggunakan hash
        */
        if (verify != true) {
            res.json({ msg: 'Password incorect !' }).status(422)
        } else {

            // isi value token kita mau apa aja
            const userToken = {
                id: fetchResult.id,
                username: fetchResult.username,
                email: fetchResult.email
            }

            /*  set token dengan value usertoken
                set secret key token kita untuk nanti validasi
                set expires token nya
                lalu kasih balikan berupa token jika login sukses
            */
            jwt.sign({ userToken }, process.env.JWT_KEY, {
                expiresIn: '365d' // set expire token
            }, (err, token) => {
                if (err) {
                    console.error('Kesalahan Penandatanganan JWT:', err);
                    res.status(500).json({ error: 'Kesalahan Server Internal' });
                } else {
                    const loginResult = {
                        userId: userToken.id,
                        name: userToken.username,
                        token: token
                    };
                    res.json({ error: false, message: 'success', loginResult }).status(200);
                }
            });
        }
    } catch (error) {
        // kondisi jika username atau password salah
        res.json({ msg: `email or password not match ${error}` }).status(422);
    }
}

module.exports = {
    register, authentication
}