class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
    
    def index
       @portfolio_items = Portfolio.all 
    end
    
    def show
    end
    
    def new
        @portfolio_item = Portfolio.new
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)
        if @portfolio_item.save
            redirect_to portfolios_path, notice: 'Portfolio item created'
        else
            render :new 
        end
    end
    
    def edit
    end
    
    def update
        if @portfolio_item.update_attributes(portfolio_params)
            render @portfolio_item, notice: 'Portfolio item updated'
        else
            render :edit, alert: 'Something went wrong'
        end
    end
    
    private
    
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
    end
    
    def set_portfolio
        @portfolio_item = Portfolio.find(params[:id])
    end
end
