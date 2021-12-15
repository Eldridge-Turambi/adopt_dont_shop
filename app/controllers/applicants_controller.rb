class ApplicantsController < ApplicationController

  def new

  end


  def show
     @applicant = Applicant.find(params[:id])
     @pets = @applicant.pets{params[:id]}
  end
end
