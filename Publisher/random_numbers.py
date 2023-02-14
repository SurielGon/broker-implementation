import random

import paho.mqtt.client as mqtt

import time


# Define o nome do broker e a porta

broker_address = "localhost"

port = 1883


# Inicializa o cliente

client = mqtt.Client()


# Conecta ao broker

client.connect(broker_address, port)


# Laço infinito

while True:

  # Sorteia 6 números entre 1 e 60

  numbers = random.sample(range(1, 61), 6)


  # Converte os números em uma string separada por vírgulas

  numbers_str = ",".join(str(x) for x in numbers)


  # Publica os números no tópico "lottery"

  client.publish("sorted_numbers", numbers_str)

  print("Sorted numbers:", numbers_str)

  # Aguarda 5 segundos

  time.sleep(5)


# Fecha a conexão com o broker

client.disconnect()
