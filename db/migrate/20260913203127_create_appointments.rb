class CreateAppointments < ActiveRecord::Migration[8.1]
  def change
    create_table :appointments do |t|
      t.references :Physician, null: false, foreign_key: true
      t.references :Patient, null: false, foreign_key: true
      t.string :appointment_Number

      t.timestamps
    end
  end
end
