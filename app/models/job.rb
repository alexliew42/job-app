class Job < ApplicationRecord
  belongs_to :company

  def name
    @company = Company.find_by(id: params[:id])
    return @company.name
  end
end
