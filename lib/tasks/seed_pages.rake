task gen_pages: :environment do

    home_page = Page.create!(title: 'Home', path: '/', layout: 'home')
    about_page = Page.create!(title: 'About Us', path: '/about', layout: 'about')
    about_page = Page.create!(title: 'Resources', path: '/resources', layout: 'resource')

end