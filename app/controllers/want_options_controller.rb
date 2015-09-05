class WantOptionsController < ApplicationController
  # GET /want_options
  # GET /want_options.json
  before_filter :admin_require
  
  def index
    @want_options = WantOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @want_options }
    end
  end

  # GET /want_options/1
  # GET /want_options/1.json
  def show
    @want_option = WantOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @want_option }
    end
  end

  # GET /want_options/new
  # GET /want_options/new.json
  def new
    @want_option = WantOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @want_option }
    end
  end

  # GET /want_options/1/edit
  def edit
    @want_option = WantOption.find(params[:id])
  end

  # POST /want_options
  # POST /want_options.json
  def create
    @want_option = WantOption.new(params[:want_option])

    respond_to do |format|
      if @want_option.save
        format.html { redirect_to want_options_path(), notice: 'Want option was successfully created.' }
        format.json { render json: @want_option, status: :created, location: @want_option }
      else
        format.html { render action: "new" }
        format.json { render json: @want_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /want_options/1
  # PUT /want_options/1.json
  def update
    @want_option = WantOption.find(params[:id])

    respond_to do |format|
      if @want_option.update_attributes(params[:want_option])
        format.html { redirect_to want_options_path(), notice: 'Want option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @want_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /want_options/1
  # DELETE /want_options/1.json
  def destroy
    @want_option = WantOption.find(params[:id])
    @want_option.destroy

    respond_to do |format|
      format.html { redirect_to want_options_url }
      format.json { head :no_content }
    end
  end
end
