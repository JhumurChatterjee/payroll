class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :subdomain, limit: 250, null: false

      t.timestamps
    end
  end
end
