class CreateWotds < ActiveRecord::Migration[6.1]
  def change
    create_table :wotds do |t|
      t.string :traditional
      t.string :simplified
      t.string :pinyin
      t.string :english1
      t.string :english2

      t.timestamps
    end
  end
end
