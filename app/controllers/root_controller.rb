class RootController < ApplicationController
  def index
    @message = Message.all.order('RANDOM()').first;

    respond_to do |format|
      format.html
      format.json { render json: { message: @message.content } }
    end
  end
end
