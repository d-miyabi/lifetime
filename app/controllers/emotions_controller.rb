class EmotionsController < ApplicationController

  def new
    @emotion = Emotion.new
  end

  def show
  end

  def create!
    @emotion = Emotion.create(emotion_params)
    redirect_to '/'
  end

  private
  
  def emotion_params
    params.require(:emotion).permit(:emotion_text)
  end

end
