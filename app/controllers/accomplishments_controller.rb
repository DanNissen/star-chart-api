class AccomplishmentsController < ProtectedController
  before_action :set_accomplishment, only: %i[show update destroy]

  # GET /accomplishments
  def index
    @accomplishments = current_user.accomplishments.all

    render json: @accomplishments
  end

  # GET /accomplishments/1
  def show
    render json: @accomplishment
  end

  # POST /accomplishments
  def create
    @accomplishment = current_user.accomplishments.build(accomplishment_params)

    if @accomplishment.save
      render json: @accomplishment, status: :created
    else
      render json: @accomplishment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accomplishments/1
  def update
    if @accomplishment.update(accomplishment_params)
      render json: @accomplishment
    else
      render json: @accomplishment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accomplishments/1
  def destroy
    @accomplishment.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accomplishment
      @accomplishment = current_user.accomplishments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def accomplishment_params
      params.require(:accomplishment).permit(:name, :description, :date_accomplished, :color)
    end
end
