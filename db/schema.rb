ActiveRecord::Schema.define(version: 2020_09_23_050839) do

  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
