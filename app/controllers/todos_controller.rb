class TodosController < ApplicationController
	def index
		@authors = Author.all
		@tasks = Todo.all
	end

	def create
		task = params.require(:taco).permit(:description, :author_id)
		Todo.create(task)
		redirect_to '/'
	end
end
