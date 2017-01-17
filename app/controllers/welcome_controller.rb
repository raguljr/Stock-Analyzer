class WelcomeController < ApplicationController
  def index
  	@comp=Company.all
  end
  def save
  	company=Company.create(name: params[:v])
  	
  end

  def part
  	@com=Company.all
  	render json: @com
  end

  def del

    @compd = Company.find(params[:d])
    @compd.destroy
  end

end
