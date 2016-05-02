# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Stage.create!([
  {stage_name: "Idea", stage_description: "interviewing customers, discovering pain points, identifying market, researching competition", stage_icon: "https://cdn0.iconfinder.com/data/icons/food-volume-2-4/48/27-512.png"},
  {stage_name: "MVP", stage_description: "Testing the version of your product which has just enough features to validate/disprove your assumptions about the demand for it", stage_icon: "http://www.cuttingedgetreeservices.com/images/icon-removal.png"},
  {stage_name: "Finding Product/Market Fit ", stage_description: "Finding strong demand from a group of users who you can leverage to generate revenue. ", stage_icon: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Leaf_icon_(Noun_Project).svg/2000px-Leaf_icon_(Noun_Project).svg.png"},
  {stage_name: "Growth", stage_description: "You've made something people want and you can monetise it. Now you're trying to grow your user base.", stage_icon: "http://www.iconsdb.com/icons/preview/black/tree-24-xxl.png"}
])