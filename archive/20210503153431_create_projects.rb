class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    if (!ActiveRecord::Base.connection.tables.include?("projects"))
      create_table :projects do |t|
        table.integer :title
        table.string :description
        t.timestamps
     end
    end
  end
end
