class Backoffice::StatesController < BackofficeController

  before_action :set_state, only: [:edit, :update, :destroy]

  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to backoffice_states_path, notice: "Estado cadastrado!"
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @state.update(state_params)
      redirect_to backoffice_states_path, notice: "Cidade atualizado!"
    else
      render :edit
    end
  end

  def destroy
    if @state.destroy
      redirect_to backoffice_states_path, notice: "Cidade deletado!"
    end
  end

  private

    def set_state
      @state = State.find(params[:id])
    end

    def state_params
      params.require(:state).permit(:description)
    end  
end
