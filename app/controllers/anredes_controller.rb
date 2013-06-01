class AnredesController < ApplicationController
  # GET /anredes
  # GET /anredes.json
  def index
    @anredes = Anrede.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anredes }
    end
  end

  # GET /anredes/1
  # GET /anredes/1.json
  def show
    @anrede = Anrede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anrede }
    end
  end

  # GET /anredes/new
  # GET /anredes/new.json
  def new
    @anrede = Anrede.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anrede }
    end
  end

  # GET /anredes/1/edit
  def edit
    @anrede = Anrede.find(params[:id])
  end

  # POST /anredes
  # POST /anredes.json
  def create
    @anrede = Anrede.new(params[:anrede])

    respond_to do |format|
      if @anrede.save
        format.html { redirect_to @anrede, notice: 'Anrede was successfully created.' }
        format.json { render json: @anrede, status: :created, location: @anrede }
      else
        format.html { render action: "new" }
        format.json { render json: @anrede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anredes/1
  # PUT /anredes/1.json
  def update
    @anrede = Anrede.find(params[:id])

    respond_to do |format|
      if @anrede.update_attributes(params[:anrede])
        format.html { redirect_to @anrede, notice: 'Anrede was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anrede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anredes/1
  # DELETE /anredes/1.json
  def destroy
    @anrede = Anrede.find(params[:id])
    @anrede.destroy

    respond_to do |format|
      format.html { redirect_to anredes_url }
      format.json { head :no_content }
    end
  end
end
