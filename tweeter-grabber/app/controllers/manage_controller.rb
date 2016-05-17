class MyControllersController < ApplicationController
  before_action :set_my_controller, only: [:show, :edit, :update, :destroy]

  # GET /my_controllers
  # GET /my_controllers.json
  def index
    @my_controllers = MyController.all
  end

  # GET /my_controllers/1
  # GET /my_controllers/1.json
  def show
  end

  # GET /my_controllers/new
  def new
    @my_controller = MyController.new
  end

  # GET /my_controllers/1/edit
  def edit
  end

  # POST /my_controllers
  # POST /my_controllers.json
  def create
    @my_controller = MyController.new(my_controller_params)

    respond_to do |format|
      if @my_controller.save
        format.html { redirect_to @my_controller, notice: 'My controller was successfully created.' }
        format.json { render :show, status: :created, location: @my_controller }
      else
        format.html { render :new }
        format.json { render json: @my_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_controllers/1
  # PATCH/PUT /my_controllers/1.json
  def update
    respond_to do |format|
      if @my_controller.update(my_controller_params)
        format.html { redirect_to @my_controller, notice: 'My controller was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_controller }
      else
        format.html { render :edit }
        format.json { render json: @my_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_controllers/1
  # DELETE /my_controllers/1.json
  def destroy
    @my_controller.destroy
    respond_to do |format|
      format.html { redirect_to my_controllers_url, notice: 'My controller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_controller
      @my_controller = MyController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_controller_params
      params.fetch(:my_controller, {})
    end
end
