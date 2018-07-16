class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :concept, :default => "Concept입력!"
      t.string :image_path
      t.string :state, :default => "first1"
      
      t.timestamps
    end
  end
end
