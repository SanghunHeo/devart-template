var socket
try{
	socket = io.connect('http://localhost:4040');
}catch(e){

}
socket.on('depthframe', function(data) {
    depth.$img[0].src = data.data;
});
