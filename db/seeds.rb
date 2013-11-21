# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
# widgets = Widget.create([
#  { 
#    type: 'LastInputs',
#    inputs: [
#      {
#        favorite: false,
#        title: 'OLT360',
#        description: 'OLT SUL 3',
#        timestamp: '10:36'
#      },
#      {
#        favorite: false,
#        title: 'EMILO X 16',
#        description: 'EMILO XPTO 2130',
#        timestamp: '23:36'
#      },
#      {
#        favorite: true,
#        title: 'OLT360',
#        description: 'OLT SUL 2',
#        timestamp: '15:36'
#      },
#      {
#        favorite: false,
#        title: 'BASTIDOR',
#        description: 'SIS BAST OLTs',
#        timestamp: '15:36'
#      },
#      {
#        favorite: false,
#        title: 'EMILO S14',
#        description: 'EMILO XPTO 1 TONY',
#        timestamp: '12:36'
#      }
#    ]
#  }
#  ])

site1 = Site.create({
  title: 'Site 1',
  url: '/api/widgets/last-inputs/sites/Site%201/inputs'
})

site2 = Site.create({
  title: 'Site 2',
  url: 'http://www.yahoo.com'
})


widget1 = Widget.create({
  name: 'last-inputs',
  title: 'Last Inputs Widget',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras egestas consectetur auctor. Suspendisse placerat tempus malesuada. Donec at convallis augue, at rutrum mauris. Sed a metus imperdiet, egestas orci ut, posuere est.',
  sites: [site1, site2]
})


category1 = Category.create({
  name: 'network',
  title: 'Network',
  widgets: [widget1]
})


inputs = Input.create([
    {
        site: site1,
        feed_id: 1,
        title: 'OLT360',
        description: 'OLT SUL 3',
        timestamp: '10:36'
    },
    {
        site: site1,
        feed_id: 2,
        title: 'EMILO X 16',
        description: 'EMILO XPTO 2130',
        timestamp: '23:36'
    },
    {
        site: site1,
        feed_id: 3,
        title: 'OLT360',
        description: 'OLT SUL 2',
        timestamp: '15:36'
    },
    {
        site: site1,
        feed_id: 4,
        title: 'BASTIDOR',
        description: 'SIS BAST OLTs',
        timestamp: '15:36'
    },
    {
        site: site2,
        feed_id: 5,
        title: 'EMILO S14',
        description: 'EMILO XPTO 1 TONY',
        timestamp: '12:36'
    }
  ])