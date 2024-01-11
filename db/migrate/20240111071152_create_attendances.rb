class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :users, null: false, foreign_key: true
      t.references :attendance_types, null: false, foreign_key: true
      t.timestamp :date

      t.timestamps
    end
  end
end
