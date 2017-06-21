class PortfoliosController < ApplicationController

	def index
		@portfolios = Portfolio.all
		
	end
	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			flash[:notice] = 'item created'
			redirect_to @portfolio_item
		else
			redirect_to root_path
		end
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

	def edit
		@portfolio_item = Portfolio.find(params[:id])
	end

	def update
		@portfolio_item = Portfolio.find(params[:id])
		if @portfolio_item.update(portfolio_params)
			redirect_to @portfolio_item
		else
			redirect_to root_path
		end
	end

	def destroy
		@portfolio_item = Portfolio.find(params[:id])
		@portfolio_item.destroy
		respond_to do |format|
      		format.html { redirect_to new_portfolio_path, notice: 'Post was removed.' }
    	end
	end

	def angular
		@angular_portfolio_items = Portfolio.angular_portfolio_items
	end






private
def portfolio_params
params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
end

end
