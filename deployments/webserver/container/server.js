var os = require("os");
var http = require('http');
var hostname = os.hostname();

const client = require('prom-client');
const counter = new client.Counter({
  name: 'http_requests_total',
  help: 'Counts the http requests received by the server',
});

var handleRequest = function(request, response) {
    console.log('Received request for URL: ' + request.url);
    counter.inc();
    response.writeHead(200);
    response.end('Hello World from ' + hostname + "!");
};
var www = http.createServer(handleRequest);
www.listen(8080);