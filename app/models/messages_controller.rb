class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.sender = current_user
    if @message.save
      # Handle successful message creation (e.g., redirect or render)
    else
      # Handle error
    end
  end

  def index
    @messages = Message.where(receiver: current_user)
  end

  private

  def message_params
    params.require(:message).permit(:receiver_id, :content)
  end
end
