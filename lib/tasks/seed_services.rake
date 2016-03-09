task :gen_blogs do

    Service.create!(
      name: 'Returning to Work',
      teaser_body: 'A Return to Work Assessment involves a functional capacity evaluation of he individual to assess an individual’s fitness to return to work.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_1.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#2FAF6A')

    Service.create!(
      name: 'Sickness and Absence',
      teaser_body: 'At Unity we provide a confidential and supportive assessment of an individual’s ill health.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_2.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#458CC4')
    
    Service.create!(
      name: 'Pre-Placement Health Assessment',
      teaser_body: 'A pre-placement assessment on the health status of a new employee is key to ensuring an individual is fit for the job they are about to undertake',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_3.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#ED635A')

    Service.create!(
      name: 'Ill Health & Retirement',
      teaser_body: 'When an employee has been unfit for work for some time with a prognosis of permenant illness, we can assess the employees health and recommend how you proceed.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_4.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#9360A7')

    Service.create!(
      name: 'Workplace Risk Assessments',
      teaser_body: '| Return to Work Assessment involves a functional capacity evaluation of he individual to assess an individual’s fitness to return to work.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_5.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#4862AA')

    Service.create!(
      name: 'Executive Pre-Placement Health Assessment',
      teaser_body: 'At Unity we provide a confidential and supportive assessment of an individual’s ill health.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_6.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#EC5090')

    Service.create!(
      name: 'Health Surveillance',
      teaser_body: 'A Return to Work Assessment involves a functional capacity evaluation of he individual to assess an individual’s fitness to return to work.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_7.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#2F825B')

    Service.create!(
      name: 'Wellbeing Services',
      teaser_body: 'At Unity we provide a confidential and supportive assessment of an individual’s ill health.',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_8.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#2FB9ED')
 end

