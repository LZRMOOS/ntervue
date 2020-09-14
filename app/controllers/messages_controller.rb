class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    message = Message.new(body: params[:message][:body])
    message.user = current_user

    if message.save
    else
      flash.now.alert = message.errors.full_messages if message.errors.any?
    end
    redirect_to messages_path
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy!

    redirect_to messages_path
  end

  def destroy_all
    Message.destroy_all
    redirect_to messages_path
  end
end
