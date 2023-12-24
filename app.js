const express = require('express');
const app = express();
const PORT = process.env.PORT || 4000;
const server = app.listen(PORT, ()=>{
    console.log('Server on port', PORT);
})
const io = require('socket.io')(server);
io.on('connection',(socket) => {
    console.log("Connected to Socket.io on ",socket.id);
})