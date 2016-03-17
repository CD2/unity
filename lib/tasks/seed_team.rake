task gen_teams: :environment do

  Team.create!( name: 'Julie Lawrence',
                position: 'Managing Director',
                body: 'Julie has worked with the Healthcare setting for 35 years. She has worked within Occupational Health for the last eight years and has been instrumental in guiding the services we provide today, from a reactive service that focused on ill health to a proactive service that specialises in the health and wellbeing of individuals.',
                color: '#458CC4')

  Team.create!( name: 'Karin Burley',
                position: 'Senior Occupational Health Nurse Advisor',
                body: 'Karin has worked within Occupational Health for ? years and for Unity for ? years. She has wide ranging experience in all area of Occupational Health provision and is particularly passionate in promoting wellbeing and engaging with the individual to help them actively manage their own health.',
                color: '#2F825B')

  Team.create!( name: 'Kevin Elsby',
                position: 'Occupational Health Physician',
                body: 'Kevin has wide ranging experience in Occupational Health and General Practise.  He is an Appointed Doctor by the HSE for Lead, Asbestos and Diving Medicals.  He is also trained to Level 4 HAVS Assessments.',
                color: '#2FAF6A')

  Team.create!( name: 'Kingsley Betts',
                position: 'Occupational Health Physician ',
                body: 'Kingsley has wide ranging experience in Occupational Health and General Practise.  He is an Appointed Doctor by the HSE for Lead and Asbestos. He is also accredited to undertake Offshore Medicals ',
                color: '#ED635A')

  Team.create!( name: 'Rachel Brown',
                position: 'Operations Manager',
                body: 'Rachel has extensive knowledge and experience in Occupational Health. At Unity, she has worked with us for over 25 years and is highly skilled in preparing bespoke occupational services tailored specifically for your business needs. If you are unsure of your particular requirements Rachel can arrange a site visit to personally discuss your needs.',
                color: '#9360A7')

  Team.create!( name: 'Diane Smith',
                position: 'Client Liaison ',
                body: 'Diane’s experience enables her to work with Human Resources, managers and employees to ensure that appointments run smoothly and that services are provided in line with client requirements. Diane provides the ‘voice’ of Unity and will respond to all your enquiries and correspondence in a timely and professional manner. ',
                color: '#4862AA')
end

