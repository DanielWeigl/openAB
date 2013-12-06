
class AdressesController < ApplicationController
  # GET /adresses
  # GET /adresses.json
  def index
    @adresses = Adresse.all
    @adr_grid = initialize_grid(Adresse,
                                :include => :anrede)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adresses }
    end
  end

  def all_tags
    @tags = Tag.all
    render :json => @tags
    #respond_to do :json  
    #  format.json { render json: @tags }
    #end
  end
  
  # GET /adresses/1
  # GET /adresses/1.json
  def show
    @adress = Adresse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adress }
    end
  end

  # GET /adresses/new
  # GET /adresses/new.json
  def new
    @adress = Adresse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adress }
    end
  end

  # GET /adresses/1/edit
  def edit
    @adress = Adresse.find(params[:id])
  end

  # POST /adresses
  # POST /adresses.json
  def create
    @adress = Adresse.new(params[:adresse])
    
    respond_to do |format|
      if @adress.save
        format.html { redirect_to @adress, notice: 'Adresse was successfully created.' }
        format.json { render json: @adress, status: :created, location: @adress }
      else
        format.html { render action: "new" }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adresses/1
  # PUT /adresses/1.json
  def update
    @adress = Adresse.find(params[:id])
    
    respond_to do |format|
      if @adress.update_attributes(params[:adresse])
        format.html { redirect_to @adress, notice: 'Adresse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adresses/1
  # DELETE /adresses/1.json
  def destroy
    @adress = Adresse.find(params[:id])
    @adress.destroy

    respond_to do |format|
      format.html { redirect_to adresses_url }
      format.json { head :no_content }
    end
  end
end
