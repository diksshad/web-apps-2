class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    # find all Company rows
    # render companies/index view
  end

   def show
      @company = Company.find_by({"id" => params["id"] })
      @contacts = Contact.where({"company_id" => params["id"] })

  #  render companies/show view with details about Company
  end

  def new
    @company = Company.new
  end
  
   def create
  @company= Company.new
  @company["name"]=params["company"]["name"]
  @company["name"]=params["company"]["city"]
  @company["name"]=params["company"]["state"]
  @company.save
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  redirect_to "/companies"
  end

  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end
  
  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end
  
  # def destroy
  #   # find a Company
  #   # destroy Company row
  #   # redirect user
  # end
  
end
