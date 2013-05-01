class PostageStampsController < ApplicationController
  # GET /postage_stamps
  # GET /postage_stamps.json
  def index
    @postage_stamps = PostageStamp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postage_stamps }
    end
  end

  # GET /postage_stamps/1
  # GET /postage_stamps/1.json
  def show
    @postage_stamp = PostageStamp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postage_stamp }
    end
  end

  # GET /postage_stamps/new
  # GET /postage_stamps/new.json
  def new
    @postage_stamp = PostageStamp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postage_stamp }
    end
  end

  # GET /postage_stamps/1/edit
  def edit
    @postage_stamp = PostageStamp.find(params[:id])
  end

  # POST /postage_stamps
  # POST /postage_stamps.json
  def create
    @postage_stamp = PostageStamp.new(params[:postage_stamp])

    respond_to do |format|
      if @postage_stamp.save
        format.html { redirect_to @postage_stamp, notice: 'Postage stamp was successfully created.' }
        format.json { render json: @postage_stamp, status: :created, location: @postage_stamp }
      else
        format.html { render action: "new" }
        format.json { render json: @postage_stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postage_stamps/1
  # PUT /postage_stamps/1.json
  def update
    @postage_stamp = PostageStamp.find(params[:id])

    respond_to do |format|
      if @postage_stamp.update_attributes(params[:postage_stamp])
        format.html { redirect_to @postage_stamp, notice: 'Postage stamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postage_stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postage_stamps/1
  # DELETE /postage_stamps/1.json
  def destroy
    @postage_stamp = PostageStamp.find(params[:id])
    @postage_stamp.destroy

    respond_to do |format|
      format.html { redirect_to postage_stamps_url }
      format.json { head :no_content }
    end
  end
end
