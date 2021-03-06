class EmailsController < ApplicationController
  before_action :all_emails, only: [:index, :destroy]
  before_action :set_email, only: [:show, :destroy]

  def show
    @email.read = true # allow to change if mail has been read or not.
    @email.save
  end

  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path   
  end

  private
    def set_email 
      @email = Email.find(params[:id])
    end

    def all_emails
      @emails = Email.all
    end
end
