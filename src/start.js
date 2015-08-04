var express = require('express');
var DEFAULT_PORT = 8080;
var PORT = process.env.PORT || DEFAULT_PORT;
var app = express();
var results = 'these are the results';

var fs = require('fs'),
    xml2js = require('xml2js');


var parser = new xml2js.Parser();

// fs.readFile('/src/reports/FIREFOX_39.0_LINUX_helloworld.xml', function(err, data) {
//    parser.parseString(data, function (err, result) {
//        results = JSON.stringify(result);
//    });
// });

app.get('/', function (req, res) {
  res.send('<html><body><p><b>Smoke Test</b></p><p/><p>' + results + '</p></body></html>\n');
});

app.listen(PORT)
console.log('Running on http://localhost:' + PORT);