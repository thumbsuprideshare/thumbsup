# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

universities = ['California Polytechnic State University, SLO', 'Santa Clara University', 'UC Irvine']
universities.each { |u| University.where(name: u).first_or_create }

cp = University.where(name: universities[0]).first
if cp.address.blank?
  cp.build_address.update(
    line_1: '1 Grand Ave',
    city: 'San Luis Obispo',
    state: 'CA',
    zipcode: '93407'
  )
end

sc = University.where(name: universities[1]).first
if sc.address.blank?
  sc.build_address.update(
    line_1: '500 El Camino Real',
    city: 'Santa Clara',
    state: 'CA',
    zipcode: '95053'
  )
end

uci = University.where(name: universities[2]).first
if uci.address.blank?
  uci.build_address.update(
    line_1: '260 Aldrich Hall',
    city: 'Irvine',
    state: 'CA',
    zipcode: '92697'
  )
end
