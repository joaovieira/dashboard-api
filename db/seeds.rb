# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

widgets = Widget.create([
  { 
    type: 'LastInputs',
    inputs: [
      {
        favorite: false,
        title: 'OLT360',
        description: 'OLT SUL 3',
        timestamp: '10:36'
      },
      {
        favorite: false,
        title: 'EMILO X 16',
        description: 'EMILO XPTO 2130',
        timestamp: '23:36'
      },
      {
        favorite: true,
        title: 'OLT360',
        description: 'OLT SUL 2',
        timestamp: '15:36'
      },
      {
        favorite: false,
        title: 'BASTIDOR',
        description: 'SIS BAST OLTs',
        timestamp: '15:36'
      },
      {
        favorite: false,
        title: 'EMILO S14',
        description: 'EMILO XPTO 1 TONY',
        timestamp: '12:36'
      }
    ]
  }
  ])