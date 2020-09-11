class AddUserToKoes < ActiveRecord::Migration[6.0]
  def change
    add_reference :koes, :user, null: false, foreign_key: true
  end
end
