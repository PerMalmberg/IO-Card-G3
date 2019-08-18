var app = new Vue({
    el: '#app',
    data: {
        input_analog: "Analog",
        input_digital: "Digital",
        sensor: "Sensor",
        output_digital: "Output digital",
        sensor_triggered: "Sensor triggered"
    }
});

let socket = null;
function connect()
{
    if(socket != null)
    {
        socket.close();
    }

    let url = ((window.location.protocol === "https:") ? "wss://" : "ws://") + window.location.host + "/data";
    socket = new WebSocket(url);

    socket.addEventListener('open', function (event) {
        console.log("Connected!");
    });

    socket.addEventListener('close', function (event) {
        console.log("Disconnected: " + event.reason);
        connect();
    });

    // Listen for messages
    socket.addEventListener('message', function (event) {
        console.log(event.data);
        app.input_analog = JSON.parse(event.data);
    });
}