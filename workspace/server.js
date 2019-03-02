var http = require('http');
var server = http.createServer(function(req, res){
   res.writeHead(200, {'Content-type': 'text/plain'});
   res.end('Hello world\n');
});

server.listen(5000);
console.log('Server is ready!');
