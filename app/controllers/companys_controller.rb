class CompanysController < ApplicationController
  before_action :authenticate_admin, except: [:index]
 
  def index
    @companys = Company.all
  end

  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end
  
  def new
    @company = Company.new
    render :new
  end

  def create
    @company = Company.new(
    name: params[:company][:name],
    logo: params[:company][:logo],
    description: params[:company][:description]
    )
    @company.save
    redirect_to "/company/#{@company.id}"
    render :new
  end
end
