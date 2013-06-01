class BerufsFunktionsController < ApplicationController
  # GET /berufs_funktions
  # GET /berufs_funktions.json
  def index
    @berufs_funktions = BerufsFunktion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @berufs_funktions }
    end
  end

  # GET /berufs_funktions/1
  # GET /berufs_funktions/1.json
  def show
    @berufs_funktion = BerufsFunktion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @berufs_funktion }
    end
  end

  # GET /berufs_funktions/new
  # GET /berufs_funktions/new.json
  def new
    @berufs_funktion = BerufsFunktion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @berufs_funktion }
    end
  end

  # GET /berufs_funktions/1/edit
  def edit
    @berufs_funktion = BerufsFunktion.find(params[:id])
  end

  # POST /berufs_funktions
  # POST /berufs_funktions.json
  def create
    @berufs_funktion = BerufsFunktion.new(params[:berufs_funktion])

    respond_to do |format|
      if @berufs_funktion.save
        format.html { redirect_to @berufs_funktion, notice: 'Berufs funktion was successfully created.' }
        format.json { render json: @berufs_funktion, status: :created, location: @berufs_funktion }
      else
        format.html { render action: "new" }
        format.json { render json: @berufs_funktion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /berufs_funktions/1
  # PUT /berufs_funktions/1.json
  def update
    @berufs_funktion = BerufsFunktion.find(params[:id])

    respond_to do |format|
      if @berufs_funktion.update_attributes(params[:berufs_funktion])
        format.html { redirect_to @berufs_funktion, notice: 'Berufs funktion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @berufs_funktion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berufs_funktions/1
  # DELETE /berufs_funktions/1.json
  def destroy
    @berufs_funktion = BerufsFunktion.find(params[:id])
    @berufs_funktion.destroy

    respond_to do |format|
      format.html { redirect_to berufs_funktions_url }
      format.json { head :no_content }
    end
  end
end
