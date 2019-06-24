class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.integer :age
    end
  end
end
