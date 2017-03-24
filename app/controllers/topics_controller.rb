class TopicsController < ApplicationController

	before_action :find_topic, only: [:show, :edit, :update, :destroy]

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
		
	end

	def edit
		
	end

	def update
		@topic.update(topic_params)

		redirect_to topic_path(@topic)

	end

	def destroy
		@topic.destroy

		redirect_to topics_path
		
	end



	private

	def topic_params
		params.require(:topic).permit(:title, :content, :category_id)
		
	end

	def find_topic
		@topic = Topic.find(params[:id])
		
	end

end
