# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: '成人ユーザー',
  age: 20,
  last_train: Time.current
)

User.create!(
  name: '未成年ユーザー',
  age: 19,
  last_train: Time.current
)

User.create!(
  name: '成人ユーザーの友達',
  age: 20,
  last_train: Time.current
)

Party.create!(
  name: '飲み会'
)
