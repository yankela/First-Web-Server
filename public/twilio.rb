require 'rubygems'
require 'twilio-ruby'

account_sid = "AC37b8e663d6659c8f28dc1b3c3afecdf1"
auth_token = "f5d3f21f4ea9d5f22a6fdf94585593cf"

@client = Twilio::REST::Client.new account_sid, auth_token

@message = @client.messages.create(
  to: "+17865624535",
  from: "+12053814140",
  body: "Hi! I'm texting from my computer. I installed a
  ruby gem in my terminal and set this code up through
  atom."
)
