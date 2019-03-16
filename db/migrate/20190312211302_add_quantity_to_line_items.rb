class AddQuantityToLineItems < ActiveRecord::Migration[5.2]
  def itself.up
    add_column :line_items, :quantity, :integer, :default => 1

  end
    def self.down
      revome_column :line_items, :quantity
    end
  end

