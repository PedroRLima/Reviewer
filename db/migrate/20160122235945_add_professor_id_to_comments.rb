class AddProfessorIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :professor_id, :integer
    add_index :comments, :professor_id
  end
end
