
# Import required libraries
from twilio.rest import Client
import requests
import json

# Define your Twilio account SID and auth token
account_sid = 'AC872d66de625d355fdcee00b0b4e7c219'
auth_token = 'd5c031818fb710c8c753f7f5413f8a63'

# Create a Twilio client
client = Client(account_sid, auth_token)

# Define emergency contacts
emergency_contacts = [
    {'name': 'Papa', 'phone_number': '+916393193541'}
]

# Define a function to send an SMS message to all emergency contacts
def send_emergency_sms(message):
    for contact in emergency_contacts:
        client.messages.create(
            to=contact['+916393193541'],
            from_='+13204088278',  # your Twilio phone number here
            body=message
        )

# Define a function to check for emergency situations using a third-party API
def check_for_emergency(latitude, longitude):
    # Use the Crimeometer API to check for crime within 1 mile of the location
    url = 'https://api.crimeometer.com/v1/incidents/raw-data'
    headers = {'Content-Type': 'application/json', 'x-api-key': 'your_api_key_here'}
    payload = {'lat': latitude, 'lon': longitude, 'distance': 1}
    response = requests.post(url, headers=headers, data=json.dumps(payload))
    incidents = response.json()['incidents']
    # If there are any incidents, send an emergency message
    if incidents:
        message = f"Emergency: {len(incidents)} incidents within 1 mile of your location"
        send_emergency_sms(message)

# Define a function to get the user's current location using the Geolocation API
def get_location():
    # Use the HTML5 Geolocation API to get the user's current location
    position = requests.get('https://ipinfo.io/json').json().get('loc')
    # Split the location into latitude and longitude
    latitude, longitude = position.split(',')
    return latitude, longitude

# Continuously check for emergencies every minute
while True:
    latitude, longitude = get_location()
    check_for_emergency(latitude, longitude)
    time.sleep(60)