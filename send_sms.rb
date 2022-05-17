# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

account_sid = 'AC1ee6bee9b324c4e4c1e8367c734767e4'
auth_token = 'f0264cf546d57d5f1115fb1626f593b0'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+19593356945' # Your Twilio number
to = '+17194825459' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)
