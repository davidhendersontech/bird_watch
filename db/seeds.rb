# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cardinal = Bird.create(name: "jerry", species: "Cardinal", tree: Tree.first)
bluebird = Bird.create(name: "David", species: "Blue", tree: Tree.second)
raven = Bird.create(name: "Matt", species: "Raven", tree: Tree.third)