class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  def show_unique_appraised_prices_array
    # RubyProf.start
    #show unique appraised prices for each user
    @users = User.all
    
    @appraised_prices = Array.new
    @users.each do |u1|
      @appraised_prices<<u1.postage_stamps.map(&:appraised_price).uniq
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
    # results = RubyProf.stop
    # File.open "#{Rails.root}/tmp/performance/profile-tree_show.prof", 'w' do |file|
    #   RubyProf::CallTreePrinter.new(results).print(file)
    # end
  end
  def show_unique_appraised_prices_array2
    #RubyProf.start
    @users = User.all
    
    @appraised_prices = Array.new
    @users.each do |u1|
      temp_arr = []
      u1.postage_stamps.each do |p1|
        temp_arr<<p1.appraised_price
      end
      @appraised_prices<<temp_arr
    end
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
    # results = RubyProf.stop
    # File.open "#{Rails.root}/tmp/performance/profile-tree_show2.prof", 'w' do |file|
    #   RubyProf::CallTreePrinter.new(results).print(file)
    # end
  end

  def show_unique_appraised_prices_array3
    # RubyProf.start
    @users = User.all
    
    @appraised_prices = Array.new
    temp_arr = []
    @users.each do |u1|
      u1.postage_stamps.each do |p1|
        temp_arr<<p1.appraised_price
      end
      @appraised_prices<<temp_arr
      temp_arr.clear
    end
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users }
    end
    # results = RubyProf.stop
    # File.open "#{Rails.root}/tmp/performance/profile-tree_show3.prof", 'w' do |file|
    #   RubyProf::CallTreePrinter.new(results).print(file)
    # end
  end

end
