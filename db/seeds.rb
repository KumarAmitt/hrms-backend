# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Department.create!([
                     {code: 'Admin', name: 'Admin'},
                     {code: 'HR', name: 'Human Resource Management'},
                     {code: 'IT', name: 'IT Services'},
                   ])

Designation.create!([
                     {code: 'CEO', name: 'Chief Executive Officer'},
                     {code: 'CTO', name: 'Chief Technology Officer'},
                     {code: 'CHRO', name: 'Chief Human Resources Officer'},
                     {code: 'DEV', name: 'Developer'},
                   ])

AttendanceType.create!([
                         {name: 'Present', category: 'Present'},
                         {name: 'Casual Leave', category: 'Leave'},
                         {name: 'Sick Leave', category: 'Leave'},
                         {name: 'Public Holiday', category: 'Holiday'},
                       ])