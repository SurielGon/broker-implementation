import requests
import time

firebase_url = "https://sistemasdistribuidos2023-default-rtdb.firebaseio.com/trabalho5.json"

while True:
	response = requests.get(firebase_url)
	data = response.json()
	print("Resultado do firebase: ", data)
	time.sleep(30)
