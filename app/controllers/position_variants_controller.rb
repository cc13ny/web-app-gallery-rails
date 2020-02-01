class PositionVariantsController < ApplicationController
  before_action :set_position_variant, only: [:show, :edit, :update, :destroy]

  # GET /position_variants
  # GET /position_variants.json
  def index
    @position_variants = PositionVariant.all
  end

  # GET /position_variants/1
  # GET /position_variants/1.json
  def show
  end

  # GET /position_variants/new
  def new
    @position_variant = PositionVariant.new
  end

  # GET /position_variants/1/edit
  def edit
  end

  # POST /position_variants
  # POST /position_variants.json
  def create
    @position_variant = PositionVariant.new(position_variant_params)

    respond_to do |format|
      if @position_variant.save
        format.html { redirect_to @position_variant, notice: 'Position variant was successfully created.' }
        format.json { render :show, status: :created, location: @position_variant }
      else
        format.html { render :new }
        format.json { render json: @position_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_variants/1
  # PATCH/PUT /position_variants/1.json
  def update
    respond_to do |format|
      if @position_variant.update(position_variant_params)
        format.html { redirect_to @position_variant, notice: 'Position variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_variant }
      else
        format.html { render :edit }
        format.json { render json: @position_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_variants/1
  # DELETE /position_variants/1.json
  def destroy
    @position_variant.destroy
    respond_to do |format|
      format.html { redirect_to position_variants_url, notice: 'Position variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_variant
      @position_variant = PositionVariant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_variant_params
      params.require(:position_variant).permit(:name)
    end
end
