task gen_blogs: :environment do

    Service.create!(
      name: 'Returning to Work',
      teaser_body: '<p>A Return to Work Assessment involves a functional capacity evaluation of the individual to assess an individual\'s fitness to return to work.</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_1.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#2FAF6A')

    Service.create!(
      name: 'Sickness and Absence',
      teaser_body: '<p>At Unity we provide a confidential and supportive assessment of an individual’s ill health.</p><p>This information includes potential length of absence from work, any recommended safeguards or adjustments and whether a period of staged return or rehabilitation is required.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_2.png')),
      body: '<h1>Need help with Sickness and Absence??</h1><p>As well as delivering strategies for dealing with sick employees, we provide advice on current legislation for ensuring compliance and avoidance of situations where you may be exposed to legal action.
</p>',
      color: '#458CC4')
    
    Service.create!(
      name: 'Pre-Placement Health Assessment',
      teaser_body: '<p>A pre-placement assessment on the health status of a new employee is key to ensuring an individual is fit for the job they are about to undertake, without posing a risk to themselves or those around them.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_3.png')),
      body: '<h1>Need a Pre-Placement Health Assessment?</h1><p>We identify and clarify any pre-existing medical conditions that could be aggravated by work activities and recommend adjustments that may need to be undertaken.
</p><p>The Assessment provides a documented record of an employee\'s health status at the start of their employment and a fitness certificate is issued, with advice given in relation to the applicability of the Equality Act where relevant.
        </p>',
      color: '#ED635A')

    Service.create!(
      name: 'Ill Health & Retirement',
      teaser_body: '<p>When an employee has been unfit for work for some time with a prognosis of permanent illness, you or your employee may wish to terminate the contract, at which time we can assess an individual\'s health and advise you on how best to proceed.
        </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_4.png')),
      body: '<h1>Need help with Ill Health & Retirement ?</h1><p>NEED TEXT HERE</p>',
      color: '#9360A7')

    Service.create!(
      name: 'Workplace Risk Assessments',
      teaser_body: '<p>At Unity our practical assessments are undertaken by skilled Nurse Advisors. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_5.png')),
      body: '<h1>Need a Workplace Risk Assessment?</h1><p>Working with the employee, in conjunction with the Health and Safety manager or workplace supervisor, we closely examine the work environment and activities that may be contributing to musculo-skeletal or ill health concerns which impact on an individual\'s ability to carry out their role.</p>',
      color: '#4862AA')

    Service.create!(
      name: 'Executive Pre-Placement Health Assessment',
      teaser_body: '<p>Senior members of staff are especially valuable to an organisation, but often have to cope with greater responsibilities and stresses.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_6.png')),
      body: '<h1>Need aExecutive Pre-Placement Health Assessment?</h1><p>At Unity we offer an in-depth medical consultation, clinical examination with laboratory and scientific testing and health and well-being assessment for performing an executive role, taking into consideration fitness, lifestyle and travel.</p>',
      color: '#EC5090')

    Service.create!(
      name: 'Health Surveillance',
      teaser_body: '<p>Featuring a wide range of Health Surveillance Programmes, Unity will establish and maintain statutory medical screening for staff exposed to potential hazards identified within your workplace.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_7.png')),
      body: '<h1>Need help with Health Surveillance?</h1><p>The majority of health surveillance assessments can be undertaken on site and you and your employees will receive an individual report once the assessments are completed. </p>',
      color: '#2F825B')

    Service.create!(
      name: 'Wellbeing Services',
      teaser_body: '<p>We offer a variety of interventions to promote well-being in the workplace and improve the health of your workforce. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_8.png')),
      body: '<h1>Looking for Wellbeing Services?</h1><p>From blood pressure monitoring and testing for diabetes or high cholesterol, to weight management, food and nutrition advice, support with smoking cessation and alcohol consumption, Unity can offer professional advice and support, which is perfectly tailored to your company\'s need.</p>',
      color: '#2FB9ED')
 end

