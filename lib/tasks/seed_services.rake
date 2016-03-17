task gen_blogs: :environment do

    Service.create!(
      name: 'Sickness and Absence',
      teaser_body: '<p>At Unity we provide a confidential and supportive assessment of an individual’s ill health.</p><p>This information includes potential length of absence from work, any recommended safeguards or adjustments and whether a period of staged return or rehabilitation is required.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_2.png')),
      body: '<h1>Need help with Sickness and Absence?</h1><p>At Unity we advise you and your employee on the best way to manage their sickness absence, whether it is either long-term or frequent, and provide strategies to assist either their return to work or to enable them to continue at work. This can be achieved through a review of the individual’s work activities and environment in relation to their health condition. We will also advise you on how best to manage these workers within the workplace in terms of suggested reasonable adjustments to be considered if reasonably practicable within the business.</p>',
      color: '#458CC4')
    
    Service.create!(
      name: 'Health Surveillance',
      teaser_body: '<p>Featuring a wide range of Health Surveillance Programmes, Unity will establish and maintain statutory medical screening for staff exposed to potential hazards identified within your workplace.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_7.png')),
      body: '<h1>Need help with Health Surveillance?</h1><p>Unity works with the employers to assess what Health Surveillance is required in line with Statutory Legislation and the relevant HSE guidance.  We are conscious that time away from work for employees undergoing health surveillance is costly to the employer so we work with the employer to reduce disruption and time loss with a bespoke on-site programme to provide a quality legislative compliant service.</p>',
      color: '#2F825B')


    Service.create!(
      name: 'Returning to Work',
      teaser_body: '<p>A Return to Work Assessment involves a functional capacity evaluation of the individual to assess an individual\'s fitness to return to work.</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_1.png')),
      body: '<h1>Need a returning to work health assessment?</h1><p>At Unity we advise you and your employee on the best ‘return to work’ strategy, based on the individual’s work activities and environment.</p><p>We can also advise you on how to safely adapt the workplace, in so far as is reasonably practicable, to accommodate an individual’s safe return.</p>',
      color: '#2FAF6A')

    
    Service.create!(
      name: 'Pre-placement (Employment) health assessments',
      teaser_body: '<p>A pre-placement assessment on the health status of a new employee is key to ensuring an individual is fit for the job they are about to undertake, without posing a risk to themselves or those around them.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_3.png')),
      body: '<h1>Need a Pre-Placement Health Assessment?</h1><p>At Unity we advise you on your new employees fitness for their role, together with any information relating to adjustments required under the Equality Act. A certificate of fitness will be provided.</p>',
      color: '#ED635A')

    Service.create!(
      name: 'Ill Health & Retirement',
      teaser_body: '<p>When an employee has been unfit for work for some time with a prognosis of permanent illness, you or your employee may wish to terminate the contract, at which time we can assess an individual\'s health and advise you on how best to proceed.
        </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_4.png')),
      body: '<h1>Need help with Ill Health & Retirement ?</h1><p>At Unity we appreciate that the decision to consider Ill health Retirement is not always an easy decision for either the employer or the employee.  We provide a highly professional and empathetic service to ensure that the individual’s health is assessed in conjunction with their occupation, the workplace and the business needs of the company. We engage with all relevant health professionals in order to best ascertain the prognosis for future capability or redeployment if appropriate.</p>',
      color: '#9360A7')

    Service.create!(
      name: 'Workplace Risk Assessments',
      teaser_body: '<p>At Unity our practical assessments are undertaken by skilled Nurse Advisors. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_5.png')),
      body: '<h1>Need a Workplace Risk Assessment?</h1><p>Unity takes an interest in what your employees do within the workplace. This is particularly important when either planning the return of a worker following illness or injury, or to keep an employee at work when they have a health issue that is impacting on their ability to do their usual work activities.  Unity’s clinical staff believe that this service can be best provided by coming into the business, observing and assessing what the employee does and then discussing with Health and Safety, Managers  and HR, as appropriate, and the employee on what can be provided to assist the employee to remain in work.</p>',
      color: '#4862AA')

    Service.create!(
      name: 'Executive Medical Assessments',
      teaser_body: '<p>Senior members of staff are especially valuable to an organisation, but often have to cope with greater responsibilities and stresses.
</p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_6.png')),
      body: '<h1>Need aExecutive Pre-Placement Health Assessment?</h1><p>Unity acknowledges that work can be very stressful especially for those in the more senior posts. We believe in working with the employee to look at potential stressors and the impact on their general health, to build on strategies to ensure that they can manage their workloads and maintain their wellbeing.</p>',
      color: '#EC5090')


    Service.create!(
      name: 'Wellbeing and Allied Health Services',
      teaser_body: '<p>We offer a variety of interventions to promote well-being in the workplace and improve the health of your workforce. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_8.png')),
      body: '<h1>Looking for Wellbeing Services?</h1><p>Unity can provide Wellbeing services dedicated to your very individual needs and workforce. We strive to provide a bespoke service that suits your company and your employees needs.  This can be in providing Wellbeing days, counselling services, general health promotion.</p>',
      color: '#2FB9ED')

    Service.create!(
      name: 'Statutory medicals (asbestos, lead)',
      teaser_body: '<p>We offer a variety of interventions to promote well-being in the workplace and improve the health of your workforce. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_8.png')),
      body: '<h1>Looking for Wellbeing Services?</h1><p>From blood pressure monitoring and testing for diabetes or high cholesterol, to weight management, food and nutrition advice, support with smoking cessation and alcohol consumption, Unity can offer professional advice and support, which is perfectly tailored to your company\'s need.</p>',
      color: '#2FB9ED')  
       
    Service.create!(
      name: 'Occupational Medicals (Driving, HGV, Diving, Offshore, safety critical)',
      teaser_body: '<p>We offer a variety of interventions to promote well-being in the workplace and improve the health of your workforce. </p>',
      teaser_image: File.open(Rails.root.join('seed_images', 'service_person_8.png')),
      body: '<h1>Looking for Wellbeing Services?</h1><p>From blood pressure monitoring and testing for diabetes or high cholesterol, to weight management, food and nutrition advice, support with smoking cessation and alcohol consumption, Unity can offer professional advice and support, which is perfectly tailored to your company\'s need.</p>',
      color: '#2FB9ED')
 end

