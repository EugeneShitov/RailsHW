# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create([
                  {
                    title: 'Artillery'
                  },
                  {
                    title: 'Aircraft'
                  }
                ])

Product.create([
                 {
                   name: 'M142 HIMARS',
                   description: 'The M142 HIMARS (M142 High Mobility Artillery Rocket System) is a light multiple rocket launcher developed in the late 1990s for the United States Army and mounted on a standard United States Army Family of Medium Tactical Vehicles (FMTV) truck frame.',
                   price: 3_500_000,
                   image: 'https://cutt.ly/30MD6D1',
                   category_id: 1
                 },
                 {
                   name: 'B-2 Spirit',
                   description: 'The Northrop (later Northrop Grumman) B-2 Spirit, also known as the Stealth Bomber, is an American heavy strategic bomber, featuring low-observable stealth technology designed to penetrate dense anti-aircraft defenses. A subsonic flying wing with a crew of two, the plane was designed by Northrop, later Northrop Grumman, and produced from 1987 to 2000. The bomber can drop conventional and thermonuclear weapons, such as up to eighty 500-pound class (230 kg) Mk 82 JDAM GPS-guided bombs, or sixteen 2,400-pound (1,100 kg) B83 nuclear bombs. The B-2 is the only acknowledged aircraft that can carry large air-to-surface standoff weapons in a stealth configuration.',
                   price: 737_000_000,
                   image: 'https://cutt.ly/B0MXEfi',
                   category_id: 2
                 },
                 {
                   name: 'B-21 Raider',
                   description: 'The Northrop Grumman B-21 Raider is an American strategic bomber under development for the United States Air Force (USAF) by Northrop Grumman. As part of the Long Range Strike Bomber (LRS-B) program, it is to be a long-range, stealth intercontinental strategic bomber for the USAF, able to deliver conventional and thermonuclear weapons. The Air Force is planning to replace the Rockwell B-1 Lancer and Northrop Grumman B-2 Spirit with the B-21 by 2040, and could possibly replace the Boeing B-52 Stratofortress after that.',
                   price: 1_000_000_000,
                   image: 'https://cutt.ly/10MXDAh',
                   category_id: 2
                 }
               ])
               
