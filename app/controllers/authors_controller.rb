class AuthorsController < ApplicationController
	def index
		@authors = Author.all
		puts "Authors is #{@authors}"
		render :index
	end

	def create
		new_author = params.require(:author).permit(:name, :age)
		Author.create(new_author)
		redirect_to '/authors'
	end
end
