class AkademischerTitelsController < ApplicationController
  # GET /akademischer_titels
  # GET /akademischer_titels.json
  def index
    @akademischer_titels = AkademischerTitel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @akademischer_titels }
    end
  end

  # GET /akademischer_titels/1
  # GET /akademischer_titels/1.json
  def show
    @akademischer_titel = AkademischerTitel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @akademischer_titel }
    end
  end

  # GET /akademischer_titels/new
  # GET /akademischer_titels/new.json
  def new
    @akademischer_titel = AkademischerTitel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @akademischer_titel }
    end
  end

  # GET /akademischer_titels/1/edit
  def edit
    @akademischer_titel = AkademischerTitel.find(params[:id])
  end

  # POST /akademischer_titels
  # POST /akademischer_titels.json
  def create
    @akademischer_titel = AkademischerTitel.new(params[:akademischer_titel])

    respond_to do |format|
      if @akademischer_titel.save
        format.html { redirect_to @akademischer_titel, notice: 'Akademischer titel was successfully created.' }
        format.json { render json: @akademischer_titel, status: :created, location: @akademischer_titel }
      else
        format.html { render action: "new" }
        format.json { render json: @akademischer_titel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /akademischer_titels/1
  # PUT /akademischer_titels/1.json
  def update
    @akademischer_titel = AkademischerTitel.find(params[:id])

    respond_to do |format|
      if @akademischer_titel.update_attributes(params[:akademischer_titel])
        format.html { redirect_to @akademischer_titel, notice: 'Akademischer titel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @akademischer_titel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akademischer_titels/1
  # DELETE /akademischer_titels/1.json
  def destroy
    @akademischer_titel = AkademischerTitel.find(params[:id])
    @akademischer_titel.destroy

    respond_to do |format|
      format.html { redirect_to akademischer_titels_url }
      format.json { head :no_content }
    end
  end
end
