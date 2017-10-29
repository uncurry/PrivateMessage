class MessagesController < ApplicationController
	def index
    	@messages = Message.all
  	end

	def show
    	@message = Message.find(params[:id])
  	end

	def new
	@message = Message.new
	end
	
	def create
	@message = Message.new(message_params)
	respond_to do |format|
	if @message.save
  		format.html {render :message_link }
		format.json { render :show, status: :message_link, location: @message }
		end
	end
	end
	

	private
	def message_params
      		params.require(:message).permit(:text)
    	end

end
