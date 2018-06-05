# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: 'Cadeira', quantity: 100, price: 38.50)

Administrator.create(email: 'admin@admin.com', name: "Administrador", password: '123456', password_confirmation: '123456')

State.create(description: 'Acre')
State.create(description: 'Alagoas')
State.create(description: 'Amapá')
State.create(description: 'Amazonas')
State.create(description: 'Bahia')
State.create(description: 'Ceará')
State.create(description: 'Distrito Federal')
State.create(description: 'Espírito Santo')
State.create(description: 'Goiás')
State.create(description: 'Maranhão')
State.create(description: 'Mato Grosso')
State.create(description: 'Mato Grosso do Sul')
State.create(description: 'Minas Gerais')
State.create(description: 'Pará')
State.create(description: 'Paraíba')
State.create(description: 'Pernambuco')
State.create(description: 'Piauí')
State.create(description: 'Rio de Janeiro')
State.create(description: 'Rio Grande do Norte')
State.create(description: 'Rio Grande do Sul')
State.create(description: 'Rondônia')
State.create(description: 'Roraima')
State.create(description: 'Santa Catarina')
State.create(description: 'São Paulo')
State.create(description: 'Sergipe')
State.create(description: 'Tocantins')