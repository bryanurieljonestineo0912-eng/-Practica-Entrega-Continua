const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hola Mundo DevOps');
});

server.listen(3000, () => {
    console.log('Servidor iniciado en puerto 3000');
});
