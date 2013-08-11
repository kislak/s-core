class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :interval
      t.string :name
      t.decimal :amount, :scale => 2, :precision => 10
      t.string :currency
      t.string :stripe_id
      t.integer :interval_count
      t.integer :trial_period_days

      t.timestamps
    end
  end
end
