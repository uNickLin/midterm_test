class TopicsController < ApplicationController

	def index
		@topics = Topic.all
		
	end

	def new
		@topic = Topic.new
		
	end

	def create
		@topic = Topic.new(topic_params)
		@topic.save

		redirect_to topics_path
		
	end

	def show
		@topic = Topic.find(params[:id])
		
	end



	private

	def topic_params
		params.require(:topic).permit(:title, :content, :category_id)
		
	end

end
