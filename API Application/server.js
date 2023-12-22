const express = require('express');
const app = express();
const routes = require('./routes');
require('dotenv').config();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(routes);

const port = process.env.PORT || 8080;
const server = app.listen(port, () => {
    console.log(`Api Running in Port ${port}`);
});

process.on('SIGTERM', () => {
    console.info('SIGTERM signal received.');
    console.log('Closing http server.');
    server.close(() => {
        console.log('Http server closed.');
        process.exit(0);
    });
});
