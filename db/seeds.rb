# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


site1 = Site.create({
  title: 'Site 1',
  url: '/api/widgets/last-inputs/sites/Site%201/inputs'
})

site2 = Site.create({
  title: 'Site 2',
  url: '/api/widgets/links-occupation/sites/Site%202/inputs'
})

site4 = Site.create({
  title: 'Site 4',
  url: '/api/widgets/stats/sites/Site%204/inputs'
})


widget1 = Widget.create({
  name: 'last-inputs',
  title: 'Last Inputs Widget',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras egestas consectetur auctor. Suspendisse placerat tempus malesuada. Donec at convallis augue, at rutrum mauris. Sed a metus imperdiet, egestas orci ut, posuere est.',
  sites: [site1]
})

widget2 = Widget.create({
  name: 'favorites',
  title: 'Favorites',
  description: 'Morbi bibendum condimentum libero nec fringilla. Nam posuere viverra urna, sit amet scelerisque dui molestie ac. Duis mi libero, mattis non tellus in, gravida scelerisque dolor. Phasellus aliquam turpis non sapien pretium varius.',
  sites: []
})

widget3 = Widget.create({
  name: 'links-occupation',
  title: 'Links occupation',
  description: 'Nam posuere viverra urna, sit amet scelerisque dui molestie ac. Phasellus aliquam turpis non sapien pretium varius. Donec at convallis augue, at rutrum mauris. Duis mi libero, mattis non tellus in, gravida scelerisque dolor.',
  sites: [site2]
})

widget5 = Widget.create({
  name: 'stats',
  title: 'Statistics',
  description: 'Fusce dapibus eleifend nunc vel tincidunt. Aliquam erat volutpat. Etiam sit amet euismod massa, et dapibus nisi. Curabitur in velit nec diam sagittis condimentum blandit quis est.',
  sites: [site4]
})


category1 = Category.create({
  name: 'network',
  title: 'Network',
  widgets: [widget1, widget3]
})

category2 = Category.create({
  name: 'general',
  title: 'General',
  widgets: [widget2]
})

category3 = Category.create({
  name: 'stats',
  title: 'Statistics',
  widgets: [widget5]
})


inputs = Input.create([
    {
        site: site1,
        feed_id: 1,
        title: 'OLT360',
        description: 'OLT SUL 3',
        timestamp: '10:36',
        occupation: 0
    },
    {
        site: site1,
        feed_id: 2,
        title: 'EMILO X 16',
        description: 'EMILO XPTO 2130',
        timestamp: '23:36',
        occupation: 20
    },
    {
        site: site1,
        feed_id: 3,
        title: 'OLT360',
        description: 'OLT SUL 2',
        timestamp: '15:36',
        occupation: 39
    },
    {
        site: site1,
        feed_id: 4,
        title: 'BASTIDOR',
        description: 'SIS BAST OLTs',
        timestamp: '15:36',
        occupation: 67
    },
    {
        site: site1,
        feed_id: 5,
        title: 'EMILO S14',
        description: 'EMILO XPTO 1 TONY',
        timestamp: '12:36',
        occupation: 82
    },
    {
        site: site2,
        feed_id: 6,
        title: 'Link 2',
        occupation: 57
    },
    {
        site: site2,
        feed_id: 7,
        title: 'Link 32',
        occupation: 53
    },
    {
        site: site2,
        feed_id: 8,
        title: 'Link 1',
        occupation: 55
    },
    {
        site: site2,
        feed_id: 9,
        title: 'Link 4',
        occupation: 45
    },
    {
        site: site2,
        feed_id: 10,
        title: 'Link 21',
        occupation: 57
    },
    {
        site: site4,
        feed_id: 16,
        title: 'Link A',
        tuples: [
          { key: 'label1', value: 'text1' },
          { key: 'label2', value: 'text2' },
          { key: 'label3', value: 'text3' },
          { key: 'label4', value: 'text4' }
        ] 
    },
    {
        site: site4,
        feed_id: 17,
        title: 'Link B',
        tuples: [
          { key: 'label1', value: 'sample1' },
          { key: 'label2', value: 'sample2' },
          { key: 'label3', value: 'sample3' },
          { key: 'label4', value: 'sample4' }
        ] 
    },
    {
        site: site4,
        feed_id: 18,
        title: 'Link Cd',
        tuples: [
          { key: 'label1', value: 'value1' },
          { key: 'label2', value: 'value2' },
          { key: 'label3', value: 'value3' },
          { key: 'label4', value: 'value4' }
        ] 
    },
    {
        site: site4,
        feed_id: 19,
        title: 'Link D',
        tuples: [
          { key: 'label1', value: 'text1' },
          { key: 'label2', value: 'text2' },
          { key: 'label3', value: 'text3' },
          { key: 'label4', value: 'text4' }
        ] 
    },
    {
        site: site4,
        feed_id: 20,
        title: 'Link Esx',
        tuples: [
          { key: 'label1', value: 'text1' },
          { key: 'label2', value: 'text2' },
          { key: 'label3', value: 'text3' },
          { key: 'label4', value: 'text4' }
        ] 
    }
  ])