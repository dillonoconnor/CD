class AddFieldsToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :traditional, :string
    add_column :words, :simplified, :string
    add_column :words, :pinyin, :string
    add_column :words, :english1, :string
    add_column :words, :english2, :string
    remove_column :words, :eword, :string
    remove_column :words, :cword, :string
  end
end
