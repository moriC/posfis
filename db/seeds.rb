# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FactoryGirl.create :user
FactoryGirl.create :manage_blog_category
FactoryGirl.create :manage_blog
FactoryGirl.create :delivery_type, type_name: "hoge"
FactoryGirl.create :delivery_type, type_name: "mogu"
FactoryGirl.create :delivery_type, type_name: "goro"
FactoryGirl.create :product_type, type_name: "hogehoge"
FactoryGirl.create :product_type, type_name: "mogumogu"
FactoryGirl.create :product_type, type_name: "gorogoro"