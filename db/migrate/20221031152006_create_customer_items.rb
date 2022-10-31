class CreateCustomerItems < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_items do |t|
      t.bigint :item_id
      t.bigint :customer_id
    end
  end
end
