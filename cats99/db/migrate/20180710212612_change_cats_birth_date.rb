class ChangeCatsBirthDate < ActiveRecord::Migration[5.1]
  def change
    change_column :cats, :birth_date, 'date USING CAST(birth_date AS date)'
  end
end
