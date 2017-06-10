class PortfoliosController < ApplicationController

	def new
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			flash[:notice] = 'item created'
			redirect_to @portfolio_item
		else
			redirect root_path
		end
	end
	def show
		@portfolio_item = Portfolio.find(params[:id])
	end





private
def portfolio_params
params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
end

end
