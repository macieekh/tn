class CopiersController < ApplicationController
  before_filter :authenticate_user!
  # GET /copiers
  # GET /copiers.json
  def index
    @copiers = Copier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @copiers }
    end
  end

  # GET /copiers/1
  # GET /copiers/1.json
  def show
    @copier = Copier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @copier }
    end
  end

  # GET /copiers/new
  # GET /copiers/new.json
  def new
  #  @copier = Copier.new
     @copier = current_user.copiers.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @copier }
    end
  end

  # GET /copiers/1/edit
  def edit
    #@copier = Copier.find(params[:id])
    @copier = current_user.copiers.find(params[:id])

  end

  # POST /copiers
  # POST /copiers.json
  def create
    #@copier = Copier.new(params[:copier])
    @copier = current_user.copiers.new(params[:copier])

    respond_to do |format|
      if @copier.save
        format.html { redirect_to @copier, notice: 'Copier was successfully created.' }
        format.json { render json: @copier, status: :created, location: @copier }
      else
        format.html { render action: "new" }
        format.json { render json: @copier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /copiers/1
  # PUT /copiers/1.json
  def update
    #@copier = Copier.find(params[:id])
    @copier = current_user.copiers.find(params[:id])

    respond_to do |format|
      if @copier.update_attributes(params[:copier])
        format.html { redirect_to @copier, notice: 'Copier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @copier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copiers/1
  # DELETE /copiers/1.json
  def destroy
    #@copier = Copier.find(params[:id])
    @copier = current_user.copier.find(params[:id])
    @copier.destroy

    respond_to do |format|
      format.html { redirect_to copiers_url }
      format.json { head :no_content }
    end
  end
end
