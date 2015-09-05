class CanOptionsController < ApplicationController
  # GET /can_options
  # GET /can_options.json
  before_filter :admin_require
  
  def index
    @can_options = CanOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @can_options }
    end
  end

  # GET /can_options/1
  # GET /can_options/1.json
  def show
    @can_option = CanOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @can_option }
    end
  end

  # GET /can_options/new
  # GET /can_options/new.json
  def new
    @can_option = CanOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @can_option }
    end
  end

  # GET /can_options/1/edit
  def edit
    @can_option = CanOption.find(params[:id])
  end

  # POST /can_options
  # POST /can_options.json
  def create
    @can_option = CanOption.new(params[:can_option])

    respond_to do |format|
      if @can_option.save
        format.html { redirect_to can_options_path(), notice: 'Can option was successfully created.' }
        format.json { render json: @can_option, status: :created, location: @can_option }
      else
        format.html { render action: "new" }
        format.json { render json: @can_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /can_options/1
  # PUT /can_options/1.json
  def update
    @can_option = CanOption.find(params[:id])

    respond_to do |format|
      if @can_option.update_attributes(params[:can_option])
        format.html { redirect_to can_options_path(), notice: 'Can option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @can_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /can_options/1
  # DELETE /can_options/1.json
  def destroy
    @can_option = CanOption.find(params[:id])
    @can_option.destroy

    respond_to do |format|
      format.html { redirect_to can_options_url }
      format.json { head :no_content }
    end
  end
end
