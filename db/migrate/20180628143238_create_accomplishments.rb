class CreateAccomplishments < ActiveRecord::Migration[5.1]
  def change
    create_table :accomplishments do |t|
      t.string :name
      t.string :description
      t.date :date_accomplished
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
