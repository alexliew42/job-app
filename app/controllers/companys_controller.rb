class CompanysController < ApplicationController
  def index
    @companys = Company.all
  end
  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end
end
