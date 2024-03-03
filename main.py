import requests
import sys

class DiscordIntegration():
    def __init__(self, discord_webhook: str):
        self.headers = {"Content-Type": "application/json"}
        self.webhook = discord_webhook
    
    def send_message_to_discord(self, message: str):
        r = requests.post(self.webhook, headers=self.headers, json={"content": message})
        print(r.status_code)


if __name__ == '__main__':
    # start with:
    # python3 main.py YOURHOOKHERE
    print("hello world")
    
    input_webhook = sys.argv[1]
    
    discord_integration = DiscordIntegration(discord_webhook=input_webhook)
    print(input_webhook)
    discord_integration.send_message_to_discord("test from kali")
    print("end")
