const express = require('express');
const app = express();
const PORT = process.env.PORT || 4000;
const server = app.listen(PORT, ()=>{
    console.log('Server on port', PORT);
})
const io = require('socket.io')(server);

const connectUser = new Set();
io.on('connection',(socket) => {
    console.log("Connected to Socket.io on ",socket.id);
    io.emit('connected-user',connectUser.size);
    connectUser.add(socket.id);
    socket.on('disconnect', ()=> {
        console.log("Disconnected", socket.id);
        connectUser.delete(socket.id);
        io.emit('connected-user',connectUser.size);
    });


    socket.on('message', (data)=> {
        console.log(data);
        socket.broadcast.emit('message-received', data);
    });
});