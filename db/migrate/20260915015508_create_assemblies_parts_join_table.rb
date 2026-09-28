class CreateAssembliesPartsJoinTable < ActiveRecord::Migration[8.1]
  def change
    create_join_table :assemblies, :products do |t|
      # Composite indexes for fast query lookups on both sides
      t.index [ :assembly_id, :product_id ], unique: true
      t.index [ :product_id, :assembly_id ]
    end
  end
end
