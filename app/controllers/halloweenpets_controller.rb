class HalloweenpetsController < ApplicationController
  before_action :set_halloweenpet, only: [:show, :edit, :update, :destroy]

  # GET /halloweenpets
  # GET /halloweenpets.json
  def index
    @halloweenpets = Halloweenpet.all
  end

  # GET /halloweenpets/1
  # GET /halloweenpets/1.json
  def show
		flash[:notice] = 'This submission is valid!' if @halloweenpet.valid?
  end

  # GET /halloweenpets/new
  def new
    @halloweenpet = Halloweenpet.new
  end

  # GET /halloweenpets/1/edit
  def edit
  end

  # POST /halloweenpets
  # POST /halloweenpets.json
  def create
    @halloweenpet = Halloweenpet.new(halloweenpet_params)

    respond_to do |format|
      if @halloweenpet.save
        format.html { redirect_to @halloweenpet, notice: 'Halloween Pet was successfully created.' }
        format.json { render :show, status: :created, location: @halloweenpet }
      else
        format.html { render :new }
        format.json { render json: @halloweenpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /halloweenpets/1
  # PATCH/PUT /halloweenpets/1.json
  def update
    respond_to do |format|
      if @halloweenpet.update(halloweenpet_params)
        format.html { redirect_to @halloweenpet, notice: 'Halloween Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @halloweenpet }
      else
        format.html { render :edit }
        format.json { render json: @halloweenpet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /halloweenpets/1
  # DELETE /halloweenpets/1.json
  def destroy
    @halloweenpet.destroy
    respond_to do |format|
      format.html { redirect_to halloweenpets_url, notice: 'Halloween Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_halloweenpet
      @halloweenpet = Halloweenpet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def halloweenpet_params
      params.require(:halloweenpet).permit(:name, :costume, :description, :picture, :age, :email, :weight, :gender)
    end
end
