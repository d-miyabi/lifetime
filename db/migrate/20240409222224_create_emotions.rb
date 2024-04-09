class CreateEmotions < ActiveRecord::Migration[7.0]
  def change
    create_table :emotions do |t|
      t.string   :emotion_text
      t.timestamps
    end
  end
end
