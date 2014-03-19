class MichaelsController < ApplicationController
  # GET /michaels
  # GET /michaels.json
  def index
    @michaels = Michael.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @michaels }
    end
  end

  # GET /michaels/1
  # GET /michaels/1.json
  def show
    @michael = Michael.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @michael }
    end
  end

  # GET /michaels/new
  # GET /michaels/new.json
  def new
    @michael = Michael.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @michael }
    end
  end

  # GET /michaels/1/edit
  def edit
    @michael = Michael.find(params[:id])
  end

  # POST /michaels
  # POST /michaels.json
  def create
    @michael = Michael.new(params[:michael])

    respond_to do |format|
      if @michael.save
        format.html { redirect_to @michael, notice: 'Michael was successfully created.' }
        format.json { render json: @michael, status: :created, location: @michael }
      else
        format.html { render action: "new" }
        format.json { render json: @michael.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /michaels/1
  # PUT /michaels/1.json
  def update
    @michael = Michael.find(params[:id])

    respond_to do |format|
      if @michael.update_attributes(params[:michael])
        format.html { redirect_to @michael, notice: 'Michael was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @michael.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /michaels/1
  # DELETE /michaels/1.json
  def destroy
    @michael = Michael.find(params[:id])
    @michael.destroy

    respond_to do |format|
      format.html { redirect_to michaels_url }
      format.json { head :no_content }
    end
  end
end
