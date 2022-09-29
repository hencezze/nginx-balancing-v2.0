const express = require('express');
const redis = require('redis');
const app = express();

app.get('/', function(req, res) {
        res.send('Response from backup server, which starts work, when other two servers are dont working');
});

app.listen(82, function()  {
    console.log('Web application is listening on port 5000');
});
