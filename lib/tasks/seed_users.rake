task gen_users: :environment do

    User.create!(name: "Admin", email: "web@cd2solutions.co.uk", password: "pass123")

end