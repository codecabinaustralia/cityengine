# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Level.create(title: "Splash", color:"#C0882D" )
Level.create(title: "Discovery 1", color:"#C0882D" )
Level.create(title: "Discovery 2", color:"#C0882D" )
Level.create(title: "Discovery 3", color:"#C0882D" )
Level.create(title: "New Start 1", color:"#06a5d0" )
Level.create(title: "Learners 1", color:"#7C51A1" )
Level.create(title: "Learners 2", color:"#7C51A1" )
Level.create(title: "Intermediate 1", color:"#26cfad" )
Level.create(title: "Intermediate 2", color:"#26cfad" )
Level.create(title: "Advanced 1", color:"#EF5B72" )
Level.create(title: "Advanced 2", color:"#EF5B72" )
Level.create(title: "Achievers 1", color:"#EF5B72" )
Level.create(title: "Achievers 2", color:"#EF5B72" )

Skill.create(title: "Feel comfortable in the water", level_id: 1, rank_id: 1)
Skill.create(title: "Front float with assistance", level_id: 1, rank_id: 2)
Skill.create(title: "Back Float with assistance", level_id: 1, rank_id: 3)
Skill.create(title: "Kick", level_id: 1, rank_id: 4)
Skill.create(title: "Welcome song", level_id: 2, rank_id: 5)
Skill.create(title: "Cuddle kicks", level_id: 2, rank_id: 6)
Skill.create(title: "Ball swim", level_id: 2, rank_id: 7)
Skill.create(title: "Breath control", level_id: 2, rank_id: 8)
Skill.create(title: "Front float", level_id: 2, rank_id: 9)
Skill.create(title: "Back float", level_id: 2, rank_id: 10)
Skill.create(title: "Humpty Dumpty", level_id: 2, rank_id: 11)
Skill.create(title: "Circuit", level_id: 2, rank_id: 12)
Skill.create(title: "Goodbye song", level_id: 2, rank_id: 13)
Skill.create(title: "Welcome song", level_id: 3, rank_id: 14)
Skill.create(title: "Cuddle kicks", level_id: 3, rank_id: 15)
Skill.create(title: "Paddling hands", level_id: 3, rank_id: 16)
Skill.create(title: "Breath control", level_id: 3, rank_id: 17)
Skill.create(title: "Front swim", level_id: 3, rank_id: 18)
Skill.create(title: "Mat run", level_id: 3, rank_id: 19)
Skill.create(title: "Back pancake flip", level_id: 3, rank_id: 20)
Skill.create(title: "Humpty Dumpty", level_id: 3, rank_id: 21)
Skill.create(title: "Tunnel circuit", level_id: 3, rank_id: 22)
Skill.create(title: "Toy pick up", level_id: 3, rank_id: 23)
Skill.create(title: "Seated kicking", level_id: 4, rank_id: 24)
Skill.create(title: "Swim – cuddle kicks - swim", level_id: 4, rank_id: 25)
Skill.create(title: "Swim – platform -swim", level_id: 4, rank_id: 26)
Skill.create(title: "Back pancake flip", level_id: 4, rank_id: 27)
Skill.create(title: "Humpty Dumpty", level_id: 4, rank_id: 28)
Skill.create(title: "Independent circuit", level_id: 4, rank_id: 29)
Skill.create(title: "Toy pick up", level_id: 4, rank_id: 30)
Skill.create(title: "Seated kicking", level_id: 5, rank_id: 31)
Skill.create(title: "Floating and kicking on mat", level_id: 5, rank_id: 32)
Skill.create(title: "Floating and kicking with teacher", level_id: 5, rank_id: 33)
Skill.create(title: "Dog paddle hands", level_id: 5, rank_id: 34)
Skill.create(title: "5m Dog paddle swim", level_id: 5, rank_id: 35)
Skill.create(title: "Back float", level_id: 5, rank_id: 36)
Skill.create(title: "Flip swimming", level_id: 5, rank_id: 37)
Skill.create(title: "Jump in and turn around", level_id: 5, rank_id: 38)
Skill.create(title: "Kicking practice on poolside", level_id: 6, rank_id: 39)
Skill.create(title: "Face in kicking for ‘10’ with board", level_id: 6, rank_id: 40)
Skill.create(title: "5m dog paddle swim", level_id: 6, rank_id: 41)
Skill.create(title: "Back float", level_id: 6, rank_id: 42)
Skill.create(title: "5m flip swimming", level_id: 6, rank_id: 43)
Skill.create(title: "Jump in and turn around", level_id: 6, rank_id: 44)
Skill.create(title: "Goggle pick up", level_id: 6, rank_id: 45)
Skill.create(title: "Kicking practice on poolside", level_id: 7, rank_id: 46)
Skill.create(title: "5m streamline float", level_id: 7, rank_id: 47)
Skill.create(title: "5m streamline kicking", level_id: 7, rank_id: 48)
Skill.create(title: "Starfish (X) float", level_id: 7, rank_id: 49)
Skill.create(title: "5m flip swimming", level_id: 7, rank_id: 50)
Skill.create(title: "Back kicking", level_id: 7, rank_id: 51)
Skill.create(title: "Jump in and turn around", level_id: 7, rank_id: 52)
Skill.create(title: "Goggle pick up", level_id: 7, rank_id: 53)
Skill.create(title: "Kicking practice", level_id: 8, rank_id: 54)
Skill.create(title: "5m streamline kicking", level_id: 8, rank_id: 55)
Skill.create(title: "4-6 catch up arms", level_id: 8, rank_id: 56)
Skill.create(title: "Y back float", level_id: 8, rank_id: 57)
Skill.create(title: "5m back kicking", level_id: 8, rank_id: 58)
Skill.create(title: "4-6 backstroke arms with board", level_id: 8, rank_id: 59)
Skill.create(title: "Handstand", level_id: 8, rank_id: 60)
Skill.create(title: "Freestyle arm revision", level_id: 9, rank_id: 61)
Skill.create(title: "12m freestyle breathing", level_id: 9, rank_id: 62)
Skill.create(title: "12m one arm freestyle with board", level_id: 9, rank_id: 63)
Skill.create(title: "12m catch up freestyle with board", level_id: 9, rank_id: 64)
Skill.create(title: "12m catch up freestyle swim", level_id: 9, rank_id: 65)
Skill.create(title: "12m streamline backstroke kicking", level_id: 9, rank_id: 66)
Skill.create(title: "12m backstroke swim", level_id: 9, rank_id: 67)
Skill.create(title: "Assisted somersault", level_id: 9, rank_id: 68)
Skill.create(title: "20m freestyle kick and breathing revision", level_id: 10, rank_id: 69)
Skill.create(title: "20m catch up freestyle swim", level_id: 10, rank_id: 70)
Skill.create(title: "12m breaststroke kick", level_id: 10, rank_id: 71)
Skill.create(title: "20m backstroke kick", level_id: 10, rank_id: 72)
Skill.create(title: "20m 6 kick change backstroke", level_id: 10, rank_id: 73)
Skill.create(title: "4-6 butterfly kicks", level_id: 10, rank_id: 74)
Skill.create(title: "Somersaults", level_id: 10, rank_id: 75)
Skill.create(title: "20m continuous arms freestyle swim", level_id: 11, rank_id: 76)
Skill.create(title: "20m continuous arms backstroke", level_id: 11, rank_id: 77)
Skill.create(title: "12m breaststroke kick", level_id: 11, rank_id: 78)
Skill.create(title: "12m full stroke breaststroke", level_id: 11, rank_id: 79)
Skill.create(title: "12m butterfly kick", level_id: 11, rank_id: 80)
Skill.create(title: "12m one arm butterfly drill", level_id: 11, rank_id: 81)
Skill.create(title: "Tumble turns", level_id: 11, rank_id: 82)
Skill.create(title: "Freestyle development", level_id: 12, rank_id: 83)
Skill.create(title: "Backstroke development", level_id: 12, rank_id: 84)
Skill.create(title: "Breaststroke development", level_id: 12, rank_id: 85)
Skill.create(title: "Butterfly development", level_id: 12, rank_id: 86)
Skill.create(title: "Skills", level_id: 12, rank_id: 87)
Skill.create(title: "Dives", level_id: 12, rank_id: 88)
Skill.create(title: "Warm up", level_id: 13, rank_id: 89)
Skill.create(title: "Freestyle development", level_id: 13, rank_id: 90)
Skill.create(title: "Backstroke development", level_id: 13, rank_id: 91)
Skill.create(title: "Breaststroke development", level_id: 13, rank_id: 92)
Skill.create(title: "Butterfly development", level_id: 13, rank_id: 93)