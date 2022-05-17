class TwilioController < ApplicationController

  def create
    account_sid = Rails.application.credentials.twilio_api[:acct_SID]
    auth_token = Rails.application.credentials.twilio_api[:api_key]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+19593356945' # Your Twilio number
    to = "+1#{params[:phone]}" # Your mobile phone number

    client.messages.create(
    from: from,
    to: to,
    body: "Don't forget your exercises today!"
    )
  end
end
