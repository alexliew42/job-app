class JobsController < ApplicationController
  before_action :authenticate_admin, except: [:index]
  def index
    p current_user
    @jobs = Job.all
    render :index
  end

  def new
    @job = Job.new
    render :new
  end

  def create
    @job = Job.new(
      title: params[:job][:title],
      description: params[:job][:description],
      url: params[:job][:url],
      location: params[:job][:location],
      active: params[:job][:active],
      salary_range: params[:job][:salary_range],
      company_id: params[:job][:company_id]
    )
    if @job.save
      redirect_to "/jobs"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
