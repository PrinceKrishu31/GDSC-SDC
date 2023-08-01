import requests

# Set up your Twilio account details
account_sid = 'AC872d66de625d355fdcee00b0b4e7c219'
auth_token = 'd5c031818fb710c8c753f7f5413f8a63'
twilio_phone_number = '+13204088278'

# Set up the message details
message = 'EMERGENCY! I need your help! My current location is: '

# Use the requests library to get your current location
#response = requests.get('https://ipinfo.io')
location = response.json()['loc']

# Add the location to the message
message += location

# Set up a list of your friends' phone numbers
friends = ['+916393193541', '+6303082900']

# Use the Twilio API to send the message to each friend
for friend in friends:
    requests.post('https://api.twilio.com/2010-04-01/Accounts/' + account_sid + '/Messages.json',
                  auth=(account_sid, auth_token),
                  data={'From': twilio_phone_number,
                        'To': friend,
                        'Body': message})
