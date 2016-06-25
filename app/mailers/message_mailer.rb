class MessageMailer < ActionMailer::Base
  default from: "from@example.com"

 def message_me(msg)
   @msg = msg

     mail to: ENV["EMAIL"], subject: @msg.subject
  end

end
