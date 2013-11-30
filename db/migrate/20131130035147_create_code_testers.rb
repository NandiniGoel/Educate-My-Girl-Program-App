class CreateCodeTesters < ActiveRecord::Migration
  def change
    create_table :code_testers do |t|
      t.string :Title
      t.text :Code

      t.timestamps
    end
  end
end
