class CompanysController < ApplicationController
  def index
    @companys = Company.all
  end
  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end
  def create
    @company = Company.new(
    name: params[:company][:name],
    logo: params[:company][:logo],
    description: [:company][description]
    )
    @company..save
    redirect_to "/company/#{@company.id}"
  end
end
