import os
from twilio.rest import Client
# Set environment variables for your credentials
# Read more at http://twil.io/secure
account_sid = "AC872d66de625d355fdcee00b0b4e7c219"
auth_token = "d5c031818fb710c8c753f7f5413f8a63"
client = Client(account_sid, auth_token)
message = client.messages.create(
  body="Hello from Twilio",
  from_="+13204088278",
  to="+916393193541"
)
print(message.sid)