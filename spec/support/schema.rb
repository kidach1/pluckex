ActiveRecord::Schema.define do
  self.verbose = false

  create_table :people, :force => true do |t|
    t.string :name
    t.integer :age
    t.timestamps
  end
end