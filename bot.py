import requests

def send_message(text):
    url = "https://api.telegram.org/bot<Token>/sendMessage"
    data = {"chat_id": "chat_id", "text": text}
    requests.post(url, data=data)

f = open("t.txt", "r")
text = f.read()
send_message(text)
f.close()