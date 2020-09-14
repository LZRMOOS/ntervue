class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.timestamps
    end

    add_reference :messages, :user, index: true, foreign_key: true
  end
end
