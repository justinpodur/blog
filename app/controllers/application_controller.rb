class ApplicationController < ActionController::Base
	def destroy

		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
