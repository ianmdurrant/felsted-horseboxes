::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'text', title: 'Text', partable_type: 'Spina::Text' },
    { name: 'horseboxes_text', title: 'Horseboxes Text', partable_type: 'Spina::Text' },
    { name: 'services_text', title: 'Services Text', partable_type: 'Spina::Text' },
    { name: 'horseboxes_price', title: 'Price', partable_type: 'Spina::Line' },
    { name: 'key_features', title: 'Key Features', partable_type: 'Spina::Text' },
    { name: 'optional_features', title: 'Optional Features', partable_type: 'Spina::Text' },
    { name: 'image', title: 'Image', partable_type: 'Spina::Image' },
    { name: 'image_collection', title: 'Image Collection', partable_type: 'Spina::ImageCollection' },
    { name: 'banner', title: 'Banner Image', partable_type: 'Spina::Image' },
    { name: 'banner_title', title: 'Banner Title', partable_type: 'Spina::Text' },
    { name: 'testimonials', title: 'Testimonials', partable_type: 'Spina::Structure' }
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['banner', 'text', 'image', 'horseboxes_text', 'testimonials', 'services_text']
  }, {
    name: 'show',
    title: 'Default',
    page_parts: ['text', 'image']
  }, {
    name: 'services',
    title: 'Services',
    page_parts: ['text', 'image']
  }, {
    name: 'services_item',
    title: 'Service Item',
    page_parts: ['text', 'image']
  }, {
    name: 'horseboxes',
    title: 'Horseboxes',
    page_parts: ['text', 'image']
  }, {
    name: 'horseboxes_item',
    title: 'Horseboxes Item',
    page_parts: ['horseboxes_price', 'text', 'image', 'key_features', 'optional_features']
  }, {
    name: 'contact',
    title: 'Contact',
    page_parts: ['image', 'text']
  }]

  theme.custom_pages = [{
    name: 'homepage',
    title: 'Homepage',
    deletable: false,
    view_template: 'homepage'
  }]

  theme.navigations = [{
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }, {
    name: 'footer_menu',
    label: 'Banner/Footer Menu',
    auto_add_pages: false
  }]

  theme.structures = [{
    name: 'testimonials',
    structure_parts: [{
      name:           'author',
      title:          'Author',
      partable_type:  'Spina::Line'
    }, {
      name:           'company',
      title:          'Company/Location',
      partable_type:  'Spina::Line'
    }, {
      name:           'testimonial',
      title:          'Testimonial',
      partable_type:  'Spina::Text'
    }]
  }]


end
