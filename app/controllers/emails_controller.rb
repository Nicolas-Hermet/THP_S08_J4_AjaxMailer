class EmailsController < ApplicationController
  before_action :all_emails, only: [:index, :destroy]
  before_action :set_email, only: [:show, :destroy]


  # GET /emails/1
  # GET /emails/1.json
  def show
    @email.read = true # allow to change if mail has been read or not.
    @email.save
  end


  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path   
  end
 
  # GET /emails
  # GET /emails.json
  # Scaffold generated
  # def index
  #   @emails = Email.all
  # end

  # GET /emails/new
  # Scaffold generated
  # def new
  #   @email = Email.new
  # end

  # GET /emails/1/edit
  # Scaffold generated
  # def edit
  # end

  # POST /emails
  # POST /emails.json
  # Scaffold generated
  # def create
  #   @email = Email.new(email_params)

  #   respond_to do |format|
  #     if @email.save
  #       format.html { redirect_to @email, notice: 'Email was successfully created.' }
  #       format.json { render :show, status: :created, location: @email }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @email.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /emails/1
  # PATCH/PUT /emails/1.json
  # Scaffold generated
  # def update
  #   respond_to do |format|
  #     if @email.update(email_params)
  #       format.html { redirect_to @email, notice: 'Email was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @email }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @email.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email 
      @email = Email.find(params[:id])
    end

    def all_emails
      @emails = Email.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # Useless since no update nor create
    # def email_params
    #   params.fetch(:email, {})
    # end
end
