import axios from "axios"
import { connect } from "mqtt"

const client = connect([{ host: 'localhost', port: 1883 }])

client.on('connect', function(){
    client.subscribe('sorted_numbers')
})

client.on('message', function (topic, message) {

    const body = JSON.stringify({value: message.toString()})

    axios.post('https://sistemasdistribuidos2023-default-rtdb.firebaseio.com/trabalho5.json', body)

    console.log(`Received message "${message.toString()}" from topic "${topic}"`)

});

console.log('Subscriber is running...')
