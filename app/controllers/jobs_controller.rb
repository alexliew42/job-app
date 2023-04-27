class JobsController < ApplicationController
  def index
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
      salary_range: params[:job][:salary_range]
    )
    @job.save
  end
end
