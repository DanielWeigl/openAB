class BerufsTitelsController < ApplicationController
  # GET /berufs_titels
  # GET /berufs_titels.json
  def index
    @berufs_titels = BerufsTitel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @berufs_titels }
    end
  end

  # GET /berufs_titels/1
  # GET /berufs_titels/1.json
  def show
    @berufs_titel = BerufsTitel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @berufs_titel }
    end
  end

  # GET /berufs_titels/new
  # GET /berufs_titels/new.json
  def new
    @berufs_titel = BerufsTitel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @berufs_titel }
    end
  end

  # GET /berufs_titels/1/edit
  def edit
    @berufs_titel = BerufsTitel.find(params[:id])
  end

  # POST /berufs_titels
  # POST /berufs_titels.json
  def create
    @berufs_titel = BerufsTitel.new(params[:berufs_titel])

    respond_to do |format|
      if @berufs_titel.save
        format.html { redirect_to @berufs_titel, notice: 'Berufs titel was successfully created.' }
        format.json { render json: @berufs_titel, status: :created, location: @berufs_titel }
      else
        format.html { render action: "new" }
        format.json { render json: @berufs_titel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /berufs_titels/1
  # PUT /berufs_titels/1.json
  def update
    @berufs_titel = BerufsTitel.find(params[:id])

    respond_to do |format|
      if @berufs_titel.update_attributes(params[:berufs_titel])
        format.html { redirect_to @berufs_titel, notice: 'Berufs titel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @berufs_titel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /berufs_titels/1
  # DELETE /berufs_titels/1.json
  def destroy
    @berufs_titel = BerufsTitel.find(params[:id])
    @berufs_titel.destroy

    respond_to do |format|
      format.html { redirect_to berufs_titels_url }
      format.json { head :no_content }
    end
  end
end
