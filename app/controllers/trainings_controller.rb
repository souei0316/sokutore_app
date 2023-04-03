class TrainingsController < ApplicationController
  def new 
    @training = Training.new
  end
  
  def create
    @training = Training.new(training_params)
    @training.save
    redirect_to trainings_path
  end
  
  def show
    @random = Training.order("RANDOM()").limit(1)
  end
  
  def index
    @trainings = Training.all
  end
  
  def edit
    @training = Training.find(params[:id])
  end
  
  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
    redirect_to training_path(@training.id)
  end
  
  private

  def training_params
    params.require(:training).permit(:title, :image, :content)
  end
end
