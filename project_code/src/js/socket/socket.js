var socket = io.connect('http://localhost:4040');
socket.on('ready', function(data) {
    depth.$img[0].src = data.data;
});