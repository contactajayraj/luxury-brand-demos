const express = require('express');
const app = express();
app.use(express.static('public'));
app.get('/', (req, res) => res.sendFile(__dirname + '/public/index.html'));
app.listen(3006, () => console.log('NOIR & EMBER running at http://localhost:3006'));
