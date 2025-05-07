# Till nästa gång: inget bestämt

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
    puts "You find yourself in a room 1, which has lots of ways to gain money (many people to steal from)"
    puts"DO YOU WANNA STEAL? input yes or no"
    stealstate=gets.chomp
    while stealstate != "yes" && stealstate != "no"
        puts"Incorrect input. Your input was #{stealstate}. DO YOU WANNA STEAL? input yes or no"
        stealstate=gets.chomp
    end
    if  stealstate=="yes"
    steal()
    end
    puts ""
    fight()

end
def room2()

end
def shop()
    puts" Shopkeeper - Welcome to the shop!"
    puts "Your current stats are:"
    puts "power:#{$power}"
    puts "altitude:#{altitude}" 
    puts "altitude:#{altitude}" 
    puts "hp:#{hp}"  
    puts "dodge chance:#{dodge_chance}"  
    puts"HP: energy drink: 10 $cashmoneycash (+5 power) \nALTITUDE BOOSTERS: footstool: 13 $cashmoneycash (+40cm altitude) shoe lifts: 6 $cashmoneycash (+15cm altitude) \n ITEMS: rollerblades: 14 $cashmoneycash (+0.3 dodge chance)" 
    puts"Shopkeeper - What would you like to purchase?"
    purchase = gets.chomp
    if purchase == "energy drink"
        $cashmoneycash = $cashmoneycash - 10
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU MIDGET SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 10
            return
        end
        $power = $power + 5
    elsif purchase == "footstool"
        $cashmoneycash = $cashmoneycash - 13
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU MIDGET SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 13
            return
        end
        altitude = altitude + 40
    elsif purchase == "rollerblades"
        $cashmoneycash = $cashmoneycash - 14
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 14
            return
        end
        dodge_chance = dodge_chance + 0.3
    elsif purchase == "shoe lifts"
        $cashmoneycash = $cashmoneycash - 8
        if $cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" 
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            $cashmoneycash = $cashmoneycash + 8
            return
        end
        altitude = altitude + 15
    end
    return 
end
def room3()

end
def room4()

end
def steal()
    if rand(1..10)==1
        puts"your attempt at stealing has failed and you were thrown out onto the street. GAME OVER"
        puts"if you want to play again input yes, otherwise input no"
        restart_input=gets.chomp
        while restart_input != "yes" || restart_input != "no" 
           puts"Incorrect input. Your input had the #{start_input.class} class and was #{start_input}. if you want to play again input yes, otherwise input no"
           restart_input=gets.chomp
        end
        if restart_input == "no"
            gamestate = "stop"
        end
    else
        found_cash = rand(10..20)
        p found_cash
        puts "you stole #{found_cash} cashmoneycash"
        $cashmoneycash=$cashmoneycash+found_cash
    end
    return 
end
def fight(enemy_name, enemy_hp, damage)
    puts "You have encountered #{enemy_name}!"
    puts "Enemy: hp = #{enemy_hp} dmg = #{damage}"
    puts "You: hp = #{hp} dmg = #{altitude*$power}"
    puts ""



    if hp <= 0 
        gamestate = "stop"
    end
end
$cashmoneycash=1
$power=1
hp=444
base_altitude=1.49
altitude=1.49
room=1
dodge_chance=0.2
gamestate="go"
shop()
#start()
room1()
if room==2
    room2()
elsif room==3
    room3()
end
shop()
room4()

