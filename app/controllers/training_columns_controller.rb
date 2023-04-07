class TrainingColumnsController < ApplicationController

  def index
   @random = TrainingColumn.order("RANDOM()").limit(1)
  end
end
