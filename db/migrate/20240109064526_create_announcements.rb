class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end
