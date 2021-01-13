class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :eword
      t.string :cword

      t.timestamps
    end
  end
end
