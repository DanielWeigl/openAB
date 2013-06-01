class TelefonTypsController < ApplicationController
  # GET /telefon_typs
  # GET /telefon_typs.json
  def index
    @telefon_typs = TelefonTyp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @telefon_typs }
    end
  end

  # GET /telefon_typs/1
  # GET /telefon_typs/1.json
  def show
    @telefon_typ = TelefonTyp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @telefon_typ }
    end
  end

  # GET /telefon_typs/new
  # GET /telefon_typs/new.json
  def new
    @telefon_typ = TelefonTyp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @telefon_typ }
    end
  end

  # GET /telefon_typs/1/edit
  def edit
    @telefon_typ = TelefonTyp.find(params[:id])
  end

  # POST /telefon_typs
  # POST /telefon_typs.json
  def create
    @telefon_typ = TelefonTyp.new(params[:telefon_typ])

    respond_to do |format|
      if @telefon_typ.save
        format.html { redirect_to @telefon_typ, notice: 'Telefon typ was successfully created.' }
        format.json { render json: @telefon_typ, status: :created, location: @telefon_typ }
      else
        format.html { render action: "new" }
        format.json { render json: @telefon_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /telefon_typs/1
  # PUT /telefon_typs/1.json
  def update
    @telefon_typ = TelefonTyp.find(params[:id])

    respond_to do |format|
      if @telefon_typ.update_attributes(params[:telefon_typ])
        format.html { redirect_to @telefon_typ, notice: 'Telefon typ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @telefon_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefon_typs/1
  # DELETE /telefon_typs/1.json
  def destroy
    @telefon_typ = TelefonTyp.find(params[:id])
    @telefon_typ.destroy

    respond_to do |format|
      format.html { redirect_to telefon_typs_url }
      format.json { head :no_content }
    end
  end
end
