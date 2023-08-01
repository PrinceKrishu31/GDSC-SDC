import requests
import smtplib
import speech_recognition as sr
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from twilio.rest import Client
import json

# Define your Twilio account SID and auth token
account_sid = 'AC066bf6bbc599ba9e59b0f38ebd451c13'
auth_token = 'fa7dec81b81f482e8158f027ed6d29c1'

# Create a Twilio client
client = Client(account_sid, auth_token)

# Define emergency contacts
emergency_contacts = [
    {'name': 'Mummy', 'phone_number': '+919887551644'},
    {'name': 'Papa', 'phone_number': '+916393193541'}
]

# Define a function to send an SMS message to all emergency contacts
def send_emergency_sms(message):
    for contact in emergency_contacts:
        client.messages.create(
            to=contact['+916393193541'],
            from_='+15746867192',  # your Twilio phone number here
            body=message
        )

# Geocoding API endpoint
geocoding_endpoint = 'https://api.bigdatacloud.net/data/reverse-geocode-client'

# Email server settings
smtp_server = 'smtp.gmail.com'
smtp_port = 587
email_sender = 'shesafe2023@gmail.com'
email_password = 'SDGSheSafe@2023'

# Alert message settings
alert_subject = 'Emergency Alert!'
alert_text = 'Emergency Alert'
alert_text_level1 = 'I need help. Please come to my location ASAP!'
alert_text_level2 = 'I need help. Please send authentic protectors to my location ASAP!'
alert_text_level3 = 'I need help. Please send police to my location ASAP!'

# Contacts for each alert level
contacts_level1 = ['serck@gmail.com', 'princekrishu1@gmail.com', 'princekrishu@gmail.com']
contacts_level2 = ['allfabmusic@gmail.com', 'Tanmay4803@gmail.com', 'protector3@gmail.com']
contacts_level3 = contacts_level1 + contacts_level2 + ['sercodeshark@gmail.com']

# Voice recognition settings
wakeup_phrase = 'Protect me now'

# Function to send email alerts
def send_alert_email(level, location):
    # Compose email message
    msg = MIMEText(alert_text, 'plain')
    msg['From'] = email_sender
    msg['Subject'] = alert_subject
    recipients = []
    if level == 1:
        recipients = contacts_level1
    elif level == 2:
        recipients = contacts_level2
    elif level == 3:
        recipients = contacts_level3
    msg['To'] = ', '.join(recipients)

    # Connect to SMTP server and send email
    with smtplib.SMTP(smtp_server, smtp_port) as server:
        server.starttls()
        server.login(email_sender, email_password)
        server.sendmail(email_sender, recipients, msg.as_string())

    print(f'Alert level {level} sent successfully.')

# Function to get current location
def get_location():
    # Get current location
    response = requests.get(geocoding_endpoint, params={'ip': '', 'latitude': '', 'longitude': ''})
    return response.json()['city'] + ', ' + response.json()['countryName']

# Main loop for voice recognition and alerting
r = sr.Recognizer()
with sr.Microphone() as source:
    print("Say something!")
    while True:
        # Listen for voice commands
        audio = r.listen(source)
        try:
            # Try to recognize the voice command
            text = r.recognize_google(audio)
            print("You said: " + text)
            # Check if the wake-up phrase was detected
            if text.lower() == wakeup_phrase:
                # Get current location and send alerts
                location = get_location()
                send_alert_email(1, location)
                send_alert_email(2, location)
                send_alert_email(3, location)
                break
        except sr.UnknownValueError:
            print("Sorry, I didn't get that. Please say again.")
