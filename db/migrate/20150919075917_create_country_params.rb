class CreateCountryParams < ActiveRecord::Migration
  def change
    create_table :country_params do |t|
      t.float :diesel_price
      t.float :electricity_price
      t.float :one_time_subsidy
      t.float :annual_subsidy
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
