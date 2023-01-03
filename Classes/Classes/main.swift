let skeleton = Enemy(health: 100, attackStrength: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()
skeleton.takeDamage(by: 5)

let dragon = Dragon(health: 200, attackStrength: 20)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.move()
dragon.attack()
print(dragon.wingSpan)
dragon.talk(speech: "hi")
