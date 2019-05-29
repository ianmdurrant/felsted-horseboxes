::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'text', title: 'Text', partable_type: 'Spina::Text' },
    { name: 'commercial_text', title: 'Commercial Cleaning', partable_type: 'Spina::Text' },
    { name: 'domestic_text', title: 'Domestic Cleaning', partable_type: 'Spina::Text' },
    { name: 'tenancy_text', title: 'End of Tenancy', partable_type: 'Spina::Text' },
    { name: 'image', title: 'Image', partable_type: 'Spina::Image' },
    { name: 'image_collection', title: 'Image Collection', partable_type: 'Spina::ImageCollection' },
    { name: 'banner', title: 'Banner Image', partable_type: 'Spina::Image' },
    { name: 'banner_title', title: 'Banner Title', partable_type: 'Spina::Text' },
    { name: 'testimonials', title: 'Testimonials', partable_type: 'Spina::Structure' }
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['banner', 'banner_title', 'text', 'image', 'commercial_text', 'domestic_text', 'tenancy_text', 'testimonials']
  }, {
    name: 'show',
    title: 'Default',
    page_parts: ['text', 'image']
  }, {
    name: 'services',
    title: 'Services',
    page_parts: ['text', 'image']
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
    label: 'Footer Menu',
    auto_add_pages: false
  }, {
    name: 'footer_services',
    label: 'Footer Services Menu',
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
      title:          'Company',
      partable_type:  'Spina::Line'
    }, {
      name:           'testimonial',
      title:          'Testimonial',
      partable_type:  'Spina::Text'
    }]
  }]


end
