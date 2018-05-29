Recipient.destroy_all
Bill.destroy_all

bill1 = Bill.create(name: "Pizza", price: 100, bank_account: "10 1000 1000 1000")
bill2 = Bill.create(name: "Hamburger", price: 30, bank_account: "10 1000 1000 1000")
bill3 = Bill.create(name: "Fish", price: 40, bank_account: "10 1000 1000 1000")

bill1.recipients.create(name: "Grzegorz", email: "grzegorz@test.pl")
bill1.recipients.create(name: "Adam", email: "adam@test.pl")
bill2.recipients.create(name: "Kamil", email: "kamil@test.pl")
bill2.recipients.create(name: "Michał", email: "michał@test.pl")
bill3.recipients.create(name: "Bartosz", email: "bartosz@test.pl")
bill3.recipients.create(name: "Dariusz", email: "dariusz@test.pl")

puts"Bills created"
