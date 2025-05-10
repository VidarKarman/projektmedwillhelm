# Till nästa gång: willhelm löser fight vidar löser klart shop och steal samt room 1
$bought_energy_drink = false
$bought_footstool = false
$bought_shoe_lifts = false
$bought_rollerblades = false
$cashmoneycash=1
$power=10
$hp=444
$base_altitude=1.49
$altitude=1.49
$room=1
$dodge_chance=0.2
def start()
    puts"Welcome to the game \"the vertically challenged wizard\""
    puts"Input the word \"gibb\" to begin"
    start_input=gets.chomp
    while start_input != "gibb" 
        puts"Incorrect input. Your input was #{start_input}. Input the word \"gibb\" to begin. "
        start_input=gets.chomp
    end
    puts"info om trollkarlen och updraget an är på"
    puts"You the vertically challenged wizard. What is your name"
    $character_name=gets.chomp
end

def room1()
    puts "You find yourself in room 1, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
    steal()
    end
    if $hp <= 0 
        return
    end
    fight()
    if $hp <= 0 
        return
    end

end
def room2()
    puts "You find yourself in room 2, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
    steal()
    end
    if $hp <= 0 
        return
    end
    fight()
    if $hp <= 0 
        return
    end

end
def shop()
    puts" Shopkeeper - Welcome to the shop!"
    puts "Your current stats are:"
    puts "power:#{$power}"
    puts "altitude:#{$altitude}" 
    puts "hp:#{$hp}"  
    puts "dodge chance:#{$dodge_chance}"
        if $bought_energy_drink == true
            energy_drink = ""
        else 
            energy_drink = "POWER: energy drink: 10 cashmoneycash (+5power)"
        end
        if $bought_footstool == true
            footstool = ""
        else 
          footstool = "footstool: 13 cashmoneycash (+40cm altitude)"
        end
        if $bought_shoe_lifts == true
            shoe_lifts = ""
        else 
          shoe_lifts = "shoe lifts: 5 cashmoneycash (+15cm altitude)"
        end
        if $bought_footstool == true && $bought_shoe_lifts == true
            altitude_boosters = ""
        else 
            altitude_boosters = "ALTITUDE_BOOSTERS:"
        end
        if $bought_rollerblades == true
            rollerblades = ""
        else 
        rollerblades = "AGIlItY: rollerblades: 14 cashmoneycash (+0.3 dodge chance)"
        end
    puts"#{energy_drink} \n#{altitude_boosters} #{footstool} #{shoe_lifts} \n #{rollerblades}" 
    puts"Shopkeeper - What would you like to purchase?"
    purchase = gets.chomp
    while purchase != "energy drink" && purchase !="footstool" && purchase != "shoe lifts" && purchase != "rollerblades"
        puts"incorrect input"
        puts"#{energy_drink} \n#{altitude_boosters} #{footstool} #{shoe_lifts} \n #{rollerblades}" 
        puts"Shopkeeper - What would you like to purchase?"
        purchase = gets.chomp
    end
    if purchase == "energy drink"
        $cashmoneycash = $cashmoneycash - 10
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 10
            return
        end
        puts "You purchased the energy drink! Power: #{$power} cashmoneycash: #{$cashmoneycash}" 
        $power = $power + 5
        $bought_energy_drink = true
    elsif purchase == "footstool"
        $cashmoneycash = $cashmoneycash - 13
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 13
            return
        end
        puts "You purchased the footstool! Power: #{$altitude} cashmoneycash: #{$cashmoneycash}"
        $altitude = $altitude + 0.4
        $bought_foot_stool = true
    elsif purchase == "rollerblades" 
        $cashmoneycash = $cashmoneycash - 14
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 14
            return
        end
        puts "You purchased the roller blades! Power: #{$dodge_chance} cashmoneycash: #{$cashmoneycash}"
        $dodge_chance = $dodge_chance - 0.3
        $bought_rollerblades = true
    elsif purchase == "shoe lifts"
        $cashmoneycash = $cashmoneycash - 6
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 6
            return
        end
        puts "You purchased the shoe lifts! Power: #{$altitude} cashmoneycash: #{$cashmoneycash}"
        $altitude = $altitude + 0.15
        $bought_shoe_lifts = true
    end
    return 
end
def room3()
    puts "You find yourself in room 3, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
    steal()
    end
    if $hp <= 0 
        return
    end
    fight()
    if $hp <= 0 
        return
    end

end
def room4()
    puts "You find yourself in room 4, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
    steal()
    end
    if $hp <= 0 
        return
    end
    fight()
    if $hp <= 0 
        return
    end
end
def steal()
    if rand(1..10)==1
        puts"your attempt at stealing has failed and you were thrown out onto the street. GAME OVER"
        $hp = 0
    else
        found_cash = rand(10..20)
        puts "you stole #{found_cash} cashmoneycash"
        $cashmoneycash=$cashmoneycash+found_cash
    end
end

# Beskrivning:  The function returns true or false randomly but it returns true with the decimal probability of the firt argument
# Argument 1:    Float   a number between 0 and 1 representing the decimal probability for the return being true
# Return:       Bool  
# Exempel:         
#     dodgecheck(0.8)  #=> returns true 80% of the time
#     dodgecheck(0.5)  #=> returns true 50% of the time      
# Datum:  2025-05-10                
# Namn: Vidar Karman   
def dodgecheck(chance_to_dodge)
    if rand(1..10) <= 10*chance_to_dodge
        return true
    end
    return false
end

# Beskrivning:  A positive number is subtracted by a random integer between 0 and the number divided by 4
# Argument 1:    Integer/Float the number which will be subtracted from 
# Return:       Integer/Float  the number after a random integer between 0 and the number divided by 4 has been subtracted from it
# Exempel:         
#     playerdamage(20)          #=>  an integer between 15 and 20
#     playerdamage(4.8)          #=> an fleat between 2.8 and 4.8
# 
#              
# Datum:  2025-05-10                
# Namn: Vidar Karman                 
def playerdamage(damage)
    return damage-rand(0..(damage/4.0).to_i)
end

def fight(enemy_name, enemy_hp, damage)
    puts "You have encountered #{enemy_name}!"
    puts "Enemy: hp = #{enemy_hp} dmg = #{damage}"
    puts "Your current stats are:"
    puts "power:#{$power}"
    puts "altitude:#{$altitude}" 
    puts "hp:#{$hp}"  
    puts "dodge chance:#{$dodge_chance}"  
    puts "You: hp = #{$hp} max dmg = fireball:#{$altitude*$power}(altitude*power) melee:#{$power}(power)"
    while $hp >0 && enemy_hp > 0
        puts "#{enemy_name} attacks you for #{damage}"
        if dodgecheck($dodge_chance) 
            puts "The attack from #{enemy_name} was dodged"
        else
            puts "The attack from #{enemy_name} hits #{$character_name} and damages him for #{damage} damage "
            $hp -= damage
            puts "#{$character_name}s hp is now #{$hp}"
            if rand(1..4)<=3
                puts "#{enemy_name} attacks you again because your were caught by the first for #{damage/2} damage" 
                $hp -= damage/2
                puts "#{$character_name}s hp is now #{$hp}"
            end
        end
        if $hp <= 0 
            return
        end
        puts "#{$character_name} gains initiative and can now climb(altitude+1) or attack with melee(#{$power} dmg, guaranteed hit) or fireball(#{$altitude*$power} dmg, may miss)"
        puts "Choose an action: melee, fireball or climb"
        input=gets.chomp
        while input!="melee" && input!="fireball" && input!="climb"
            puts"invalid input"
            puts "Choose an action: melee, fireball or climb"
        end
        if input == "melee"
            dmg=playerdamage($power).to_i
            "The attack from #{$character_name} hits #{enemy_name} and damages them for #{dmg} damage"
            enemy_hp-=dmg
            puts "#{enemy_name}s hp is now #{enemy_hp}"
        elsif input=="fireball"
            if rand(1..5) <=3
                dmg=playerdamage($power*$altitude).to_i
                "The fireball from #{$character_name} hits #{enemy_name} and damages them for #{dmg} damage"
                enemy_hp-=dmg
                puts "#{enemy_name}s hp is now #{enemy_hp}"
            else
                puts"the fireball missed #{enemy_name}"
            end
        else
            puts"#{$character_name} climb higher. new altitude: #{$altitude+1}"
            $altitude+=1
        end
    end
    if enemy_hp <= 0 
        puts"the fight was won"
        return
    end
end
def main_game_function()
    start()
    if $hp <= 0 
        return
    end
    room1()
    if $hp <= 0 
        return
    end
    shop()
    if $hp <= 0 
        return
    end
    if $room==2
       room2()
       if $hp <= 0 
        return
    end
    elsif $room==3
        room3()
        if $hp <= 0 
            return
        end
    end
    shop()
    if $hp <= 0 
        return
    end
    room4()
    if $hp <= 0 
        return
    end
end

shop()
#main_game_function()
if $hp > 0 
    puts"As #{$character_name} reaches the top of the building he is delighted. It's altitude commpared to the surroundings is great"
    puts"GAME OVER you won"
else
    puts"GAME OVER you lost and got killed"
end

#start()
#room1()
#shop()
#if $room==2
#   room2()
#elsif $room==3
#    room3()
#end
#shop()
#room4()

