class MailTypsController < ApplicationController
  # GET /mail_typs
  # GET /mail_typs.json
  def index
    @mail_typs = MailTyp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mail_typs }
    end
  end

  # GET /mail_typs/1
  # GET /mail_typs/1.json
  def show
    @mail_typ = MailTyp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mail_typ }
    end
  end

  # GET /mail_typs/new
  # GET /mail_typs/new.json
  def new
    @mail_typ = MailTyp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mail_typ }
    end
  end

  # GET /mail_typs/1/edit
  def edit
    @mail_typ = MailTyp.find(params[:id])
  end

  # POST /mail_typs
  # POST /mail_typs.json
  def create
    @mail_typ = MailTyp.new(params[:mail_typ])

    respond_to do |format|
      if @mail_typ.save
        format.html { redirect_to @mail_typ, notice: 'Mail typ was successfully created.' }
        format.json { render json: @mail_typ, status: :created, location: @mail_typ }
      else
        format.html { render action: "new" }
        format.json { render json: @mail_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mail_typs/1
  # PUT /mail_typs/1.json
  def update
    @mail_typ = MailTyp.find(params[:id])

    respond_to do |format|
      if @mail_typ.update_attributes(params[:mail_typ])
        format.html { redirect_to @mail_typ, notice: 'Mail typ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mail_typ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_typs/1
  # DELETE /mail_typs/1.json
  def destroy
    @mail_typ = MailTyp.find(params[:id])
    @mail_typ.destroy

    respond_to do |format|
      format.html { redirect_to mail_typs_url }
      format.json { head :no_content }
    end
  end
end
