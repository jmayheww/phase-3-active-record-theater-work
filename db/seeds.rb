role_one = Role.create(character_name: 'Romeo')
role_two = Role.create(character_name: 'Juliet')
role_three = Role.create(character_name: 'Mercutio')

Audition.create(actor: 'Rahul', location: 'NJ', phone: 555, hired: false, role_id: role_one.id)
Audition.create(actor: 'Ethan', location: 'Chicago', phone: 444, hired: false, role_id: role_one.id)
Audition.create(actor: 'Brian', location: 'Houston', phone: 333, hired: false, role_id: role_three.id)
Audition.create(actor: 'Allison', location: 'Houston', phone: 222, hired: false, role_id: role_two.id)
Audition.create(actor: 'Kassie', location: 'NY', phone: 111, hired: false, role_id: role_two.id)
