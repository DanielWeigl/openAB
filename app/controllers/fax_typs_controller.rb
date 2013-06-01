class FaxTypsController < ApplicationController
  # GET /fax_typs
  # GET /fax_typs.json
  def index
    @fax_typs = FaxTyp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fax_typs }
    end
  end

  # GET /fax_typs/1
  # GET /fax_typs/1.json
  def show
    @fax_typ = FaxTyp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fax_typ }
    end
  end

  # GET /fax_typs/new
  # GET /fax_typs/new.json
  def new
    @fax_typ = FaxTyp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fax_typ }
    end
  end

  # GET /fax_typs/1/edit
  def edit
    @fax_typ = FaxTyp.find(params[:id])
  end

  # POST /fax_typs
  # POST /fax_typs.json
  def create
    @fax_typ = FaxTyp.new(params[:fax_typ])

    respond_to do |format|
      if @fax_typ.save
        format.html { redirect_to @fax_typ, notice: 'Fax typ was successfully created.' }
        format.json { render json: @fax_typ, status: :created, location: @fax_typ }
      else
        format.html { render action: "new" }
        format.json { render json: @fax_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fax_typs/1
  # PUT /fax_typs/1.json
  def update
    @fax_typ = FaxTyp.find(params[:id])

    respond_to do |format|
      if @fax_typ.update_attributes(params[:fax_typ])
        format.html { redirect_to @fax_typ, notice: 'Fax typ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fax_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fax_typs/1
  # DELETE /fax_typs/1.json
  def destroy
    @fax_typ = FaxTyp.find(params[:id])
    @fax_typ.destroy

    respond_to do |format|
      format.html { redirect_to fax_typs_url }
      format.json { head :no_content }
    end
  end
end
