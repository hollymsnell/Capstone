class AddInjuryDiagnosisToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :injury_diagnosis, :string
  end
end
