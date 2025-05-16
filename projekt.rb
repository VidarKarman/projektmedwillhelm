# Till nästa gång: willhelm löser fight vidar löser klart shop och steal samt room 1
$bought_energy_drink = false
$bought_footstool = false
$bought_shoe_lifts = false
$bought_rollerblades = false
$cashmoneycash=1
$power=10
$hp=150
$base_altitude=1.5
$altitude=1.5
$room=1
$dodge_chance=0.2
def start()
    puts"Welcome to \"the vertically challenged wizard\""
    puts"Input the word \"gibb\" to begin"
    start_input=gets.chomp
    while start_input != "gibb" 
        puts"Incorrect input. Your input was #{start_input}. Input the word \"gibb\" to begin. "
        start_input=gets.chomp
    end
    puts"MISSION: To get to the top of the tower and to TOWER over your abnormally tall foes!"
    puts "Your starting stats are:"
    puts "Altitude    :#{$base_altitude} "
    puts "HP          : #{$hp}"
    puts "Power       : #{$power}"
    puts "Dodge_chance: #{$dodge_chance}"
    puts"You the vertically challenged wizard. State your name"
    $character_name=gets.chomp
end

def room1()
    puts "You find yourself on floor 1, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
        $cashmoneycash+=steal($cashmoneycash)
    end
    if $hp <= 0 
        return
    end
    puts "You find a security guard in your way to the next floor. He notices you and shouts: -PREPARE FOR BATTLE LITTLE ONE!"
    fight("security guard", 30, 10)
    if $hp <= 0 
        return
    end
    puts "After defeating the security guard you continue your vertical ascent ."

end
def room2()
    puts "You find yourself on floor 2, which has a surprising amount of wallets lying on the floor"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
        $cashmoneycash+=steal($cashmoneycash)
    end
    if $hp <= 0 
        return
    end
    puts"After stealing a couple of wallets an old lady appears from behind the door and demands that you put them back if you want to proceed"
    puts"Do you put all your wallets back? input yes or no"
    input=gets.chomp
    while input != "yes" && input != "no"
        puts"Incorrect input. Your input was #{input}. DO YOU WANNA STEAL? input yes or no"
        input=gets.chomp
    end
    if input == "yes"
        puts"after giving up the wallets, the old lady allows you to proceed"
        $cashmoneycash=0
    else 
        fight("old lady", 40, 8)
        if $hp <= 0 
            return
        end
        puts"After having bested the old lady in battle the path to the stairs is clear"
    end
    return
end

def shop()
    puts" Shopkeeper - Welcome to the shop!"
    puts "Your current stats are:"
    puts "power:#{$power}"
    puts "altitude:#{$altitude}m" 
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
    rollerblades = "AGILITY: rollerblades: 14 cashmoneycash (+0.3 dodge chance)"
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
    if purchase == "energy drink" && $bought_energy_drink == false
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
    elsif purchase == "footstool" && $bought_footstool == false
        $cashmoneycash = $cashmoneycash - 13
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 13
            return
        end
        puts "You purchased the footstool! Altitude: #{$altitude} cashmoneycash: #{$cashmoneycash}"
        $altitude = $altitude + 0.4
        $base_altitude=$base_altitude+0.4
        $bought_footstool = true
    elsif purchase == "rollerblades" && $bought_rollerblades == false
        $cashmoneycash = $cashmoneycash - 14
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 14
            return
        end
        puts "You purchased the roller blades! Power: #{$dodge_chance} cashmoneycash: #{$cashmoneycash}"
        $dodge_chance = $dodge_chance + 0.3
        $bought_rollerblades = true
    elsif purchase == "shoe lifts" && $bought_shoe_lifts == true
        $cashmoneycash = $cashmoneycash - 5
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 6
            return
        end
        puts "You purchased the shoe lifts! Power: #{$altitude} cashmoneycash: #{$cashmoneycash}"
        $altitude = $altitude + 0.15
        $base_altitude=$base_altitude+0.15
        $bought_shoe_lifts = true
    end
    return 
end
def room3()
    puts "You find yourself on floor 3, which has what looks like a shop"
    puts "You think that you may be able to sneak past the shop. It looks friendly enough."
    puts"Do you wanna sneak past or enter? input sneak or enter"
    answer = gets.chomp
    while answer != "sneak" && answer != "enter"
        puts "Incorrect input. Your input was #{answer}. Do you wanna sneak past or enter? input sneak or enter"
        answer = gets.chomp
    end
    if answer == "sneak"
        if sneak($base_altitude)
            puts"you manage to sneak past the shopkeeper without being detected and you climb up the stairs"
            return
        else
            fight("shopkeeper", 50,18)
            return
        end
    elsif answer == "enter"
        shop()
        puts"With the shopkeeper being aware of your presence there is no longer a way to sneak past him. Your only option to get to the next floor is to fight. "
        puts"You walk into the shop again and try to start a fight but the shopkeeper punches first"
        fight("shopkeeper", 50,18)
        return
    end
end
def room4()
    puts "You find yourself on floor 4, which has lots of ways to gain money (many people to steal from)"
    puts "But something catches your eye"
    puts "A wallet begging to get stolen. Its seams suffering from all the hard cold cash it is carrying"
    puts "A wallet no man (including manlets such as yourself) could not resist stealing"
    puts "As your hand tightens around the money a boxing glove acquaints itself with your face"
    puts "ENTER: Mike Tyson"
    puts "Merry chrithmith to me I gueth: The behemoth of a man (yes, even Mike Tyson is taller than you) says as he squares up for a game of dice"
    puts "The ruleth are thimple. Both will roll two dithe each. The one with the biggeth number gets to punch the other in the fathe"
    dice_game()
    return
end
# Beskrivning:         50% chans att vinna, 50% chans att förlora och $hp=0
# Argument 1:          Inga argument tas emot
# Return:              Nil. Huvudsakliga syfte är att skriva ut text och ändra en global tillståndsvariabel
# Exempel:         
#                      dice_game()
#                      => 
#                      You: 4 + 1
#                      Mike Tyson: 7 + 8
#                      Prepare to die you thort excuthe of a man
#                      GAME OVER!
#                      (eller)
#                      Prepare to die you thort excuthe of a man
#                      In the last second you duck and sprint past Mike Tyson to get to the top floor
#                      Mission complete! You are now the highest man in the building. YOU WIN!            
# Datum:               2025-05-16
# Namn:                Wilhelm Liljegren

def dice_game()
    puts "You: 4 + 1"
    puts "Mike Tyson: 7 + 8"
    if rand(1..2) == 1
        puts "Prepare to die you thort excuthe of a man"
        puts "GAME OVER!"
        $hp = 0
    else
        puts "Prepare to die you thort excuthe of a man"
        puts "In the last second you duck and sprint past Mike Tyson to get to the top floor"
        puts "Mission complete! You are now the highest man in the building. YOU WIN!"
    end
    return
end
# Beskrivning:         Försöker stjäla pengar. 10 % chans att misslyckas, vilket leder till att spelarens HP blir 0.
#                      Vid lyckad stöld returneras ett belopp mellan 10 och 20.
# Argument 1:          current_cash: Integer – spelarens nuvarande pengar (kan vara negativt)
# Return:              Integer eller nil – summan av current_cash och stöldbelopp, eller nil vid misslyckande
# Exempel:         
# steal(10)   #=> nil (10 % chans), annars t.ex. 28
# steal(-1)   #=> nil (10 % chans), annars t.ex. 14
# steal(0)    #=> nil (10 % chans), annars t.ex. 13
# steal(50)   #=> nil (10 % chans), annars t.ex. 67
# Datum:               2025-05-15
# Namn:                Vidar Karman

def steal(current_cash)
    if rand(1..10)==1
        $hp = 0
        return 0
    end
    found_cash = rand(10..20)
    puts "you stole #{found_cash} cashmoneycash"
    return current_cash+found_cash
end


# Beskrivning:         Returnerar true eller false baserat på sannolikheten att undvika en attack.
# Argument 1:          chance_to_dodge: Float – sannolikheten (0.0–1.0) att undvika en attack
# Return:              Boolean – true med sannolikheten chance_to_dodge, annars false
# Exempel:         
# dodgecheck(0.8)  #=> true i 80 % av fallen
# dodgecheck(0.5)  #=> true i 50 % av fallen
# dodgecheck(0.2)  #=> true i 20 % av fallen
# dodgecheck(1.0)  #=> alltid true
# Datum:               2025-05-10
# Namn:                Wilhelm Liljegren

def dodgecheck(chance_to_dodge)
    if rand(1..10) <= 10*chance_to_dodge
        return true
    end
    return false
end

# Beskrivning:         Returnerar damage efter att (0 till damage/4) dragits bort.
# Argument 1:          damage: Integer/Float – maximalt skadevarde
# Return:              Integer/Float – ett värde mellan 0.75 × damage och damage
# Exempel:         
# playerdamage(20)   #=> ett heltal mellan 15 och 20
# playerdamage(4.8)  #=> ett flyttal mellan ca 3.6 och 4.8
# playerdamage(100)  #=> ett tal mellan 75 och 100
# playerdamage(8)    #=> ett tal mellan 6 och 8
# Datum:               2025-05-10
# Namn:                Vidar Karman

def playerdamage(damage)
    damage=damage-rand(0..(damage/4.0).to_i)
    return damage
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
        puts "#{$character_name} gains initiative and can now climb(altitude+1) or attack with melee(#{$power} dmg(power), guaranteed hit) or fireball(#{$altitude*$power}(altitude*power) dmg, may miss)"
        puts "Choose an action: melee, fireball or climb"
        input=gets.chomp
        while input!="melee" && input!="fireball" && input!="climb"
            puts"invalid input"
            puts "Choose an action: melee, fireball or climb"
            input=gets.chomp
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
            puts"#{$character_name} climb higher. new altitude: #{$altitude+1}m"
            $altitude+=1
        end
    end
    $altitude=$base_altitude
    if enemy_hp <= 0 
        puts"the fight was won"
        return
    end
end

# Beskrivning:         Försöker smyga förbi en fiende. Chansen att bli upptäckt är proportionell mot spelarens höjd.
# Argument 1:          current_altitude: Float – spelarens nuvarande höjd
# Return:              Bool – true om smygförsöket lyckas, false om spelaren blir upptäckt
# Exempel:         
# sneak(1.50)   #=> true i ca 47.5 % av fallen
# sneak(1.80)   #=> true i ca 37 % av fallen
# sneak(0.50)   #=> true i ca 82.5 % av fallen
# sneak(3.0)    #=> true i ca 5 % av fallen   
# Datum:               2025-05-15
# Namn:                Wilhelm Liljegren
def sneak(current_altitude)
   if rand(1..10) <= 3.5*current_altitude
    puts "You have been caught!"
    puts "Prepare to FIGHT!"
    return false
   else 
    puts "You managed to escape!"
   end
   return true
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
    room2()
    if $hp <= 0 
        return
    end
    room3()
    if $hp <= 0 
        return
    end
    room4()
    if $hp <= 0 
        return
    end  
end

main_game_function()
if $hp <= 0 
    puts"GAME OVER!"
end


