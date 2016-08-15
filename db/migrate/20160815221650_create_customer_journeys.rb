class CreateCustomerJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_journeys do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
