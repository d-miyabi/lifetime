class EmotionsController < ApplicationController
  def new
    @emotion = Emotion.new
  end

  def show; end

  def create
    @emotion = current_user.emotions.build(emotion_params)
    if @emotion.save
      redirect_to root_path
    else
      @errors = @emotion.errors.full_messages
      render :new
    end
  end

  private

  def emotion_params
    params.require(:emotion).permit(:emotion_text)
  end
end
