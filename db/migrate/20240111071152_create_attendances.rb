class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.references :attendance_type, null: false, foreign_key: true
      t.timestamp :date

      t.timestamps
    end
    add_index :attendances, %i[date user_id attendance_type_id], name: 'uniq_attendance_per_user_per_day', unique: true
  end
end
