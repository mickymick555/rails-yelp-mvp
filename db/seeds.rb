# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'destroy all records...'
Restaurant.destroy_all

puts 'creating restaurants...'

Restaurant.create(name: 'Master poulet', address: '98 avenue de ton cul', phone_number: '05548348', category: 'italian')
Restaurant.create(name: 'Chez Gladine', address: '12 place du général', phone_number: '0333448348', category: 'chinese')
Restaurant.create(name: 'Chez Georges', address: '11 rue des canettes', phone_number: '0453348348', category: 'french')
Restaurant.create(name: 'Chez ta mère', address: '98 rue guizarde', phone_number: '0553348348', category: 'japanese')
Restaurant.create(name: 'frites à gogo', address: '24 rue de seine', phone_number: '0553354348', category: 'belgian')

puts "#{Restaurant.count} restaurants created!"
