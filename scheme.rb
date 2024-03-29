ActiveRecord::Scheme do

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.date     "date"
    t.string   "phase"
    t.string   "state"
    t.integer  "local_team_id"
    t.integer  "visit_team_id"
    t.integer  "local_goals"
    t.integer  "visit_goals"
    t.integer  "winner_id"
    t.integer  "looser_id"
    t.boolean  "draw?"
    t.integer  "group_id"
    t.integer  "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["group_id"], name: "index_matches_on_group_id"
  add_index "matches", ["local_team_id"], name: "index_matches_on_local_team_id"
  add_index "matches", ["looser_team_id"], name: "index_matches_on_looser_team_id"
  add_index "matches", ["stadium_id"], name: "index_matches_on_stadium_id"
  add_index "matches", ["visit_team_id"], name: "index_matches_on_visit_team_id"
  add_index "matches", ["winner_team_id"], name: "index_matches_on_winner_team_id"

  create_table "stadiums", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.date     "construction_date"
    t.integer  "capacity"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "flag"
    t.string   "uniform"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
