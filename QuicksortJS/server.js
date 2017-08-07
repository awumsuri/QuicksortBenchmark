const  connect         = require('connect');
const serveStatic     = require('serve-static');

connect().use(serveStatic(__dirname+"/public/")).listen(5000);

console.log("Connected to port 5000");

