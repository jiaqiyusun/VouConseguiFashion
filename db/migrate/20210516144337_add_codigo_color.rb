class AddCodigoToColor < ActiveRecord::Migration[6.0]
    def change
      add_column :colors, :codigo, :string
    end
  end
  