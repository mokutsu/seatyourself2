class CreateAddAccountTypeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :account_type, :string

  end
end
