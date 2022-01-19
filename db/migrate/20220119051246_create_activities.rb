class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :difficulty
t.has_many :campers, through: :signup
      t.timestamps
    end
  end
end
