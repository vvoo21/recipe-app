class InventoryFoodsController < ApplicationController
  before_action :set_inventory_food, only: %i[show edit update destroy]
  before_action :set_foods
  before_action :set_inventory

  # GET /inventory_foods or /inventory_foods.json
  def index
    @inventory_foods = InventoryFood.all
  end

  # GET /inventory_foods/1 or /inventory_foods/1.json
  def show; end

  # GET /inventory_foods/new
  def new
    @inventory_food = InventoryFood.new
  end

  # GET /inventory_foods/1/edit
  def edit; end

  # POST /inventory_foods or /inventory_foods.json
  def create
    @inventory_food = InventoryFood.new(inventory_food_params)
    @inventory_food.inventory = @inventory
    respond_to do |format|
      if @inventory_food.save
        format.html do
          redirect_to inventory_url(@inventory), notice: 'Inventory food was successfully created.'
        end
        format.json { render :show, status: :created, location: @inventory_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_foods/1 or /inventory_foods/1.json
  def update
    respond_to do |format|
      if @inventory_food.update(inventory_food_params)
        format.html do
          redirect_to inventory_food_url(@inventory_food), notice: 'Inventory food was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @inventory_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_foods/1 or /inventory_foods/1.json
  def destroy
    @inventory_food.destroy

    respond_to do |format|
      format.html { redirect_to inventory_url(@inventory), notice: 'Inventory food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_inventory_food
    @inventory_food = InventoryFood.find(params[:id])
  end

  def set_foods
    @foods = Food.all
  end

  def set_inventory
    @inventory = Inventory.find(params[:inventory_id])
  end

  # Only allow a list of trusted parameters through.
  def inventory_food_params
    params.require(:inventory_food).permit(:quantity, :food_id, :inventory_id)
  end
end
