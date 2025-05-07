# Till nästa gång: inget bestämt
def main_game_loop()
    cashmoneycash=0
    power=1
    hp=444
    base_altitude=1.49
    altitude=1.49
    room=1
    dodge_chance=0.2
    gamestate="go"
    
    while gamestate == "go"
        start()
        if room==1
            room1()
        elsif room==2
            room2()
        elsif room==3
            room3()
        elsif room==4
            room4()
        elsif room==5
            shop()
        end
    end
    
end

def start()
    puts"Welcome to the game \"the vertically challenged wizard\""
    puts"Input the word \"gibb\" to begin"
    start_input=gets.chomp
    while start_input.class != String || start_input != "gibb" 
        puts"Incorrect input. Your input had the #{start_input.class} class and was #{start_input}. Input the word \"gibb\" to begin. "
        start_input=gets.chomp
    end
    puts"info om trollkarlen och updraget an är på"
    puts"Name your vertically challenged wizard. Input hit name "
    character_name=gets.chomp
    while character_name.class != String 
        puts"Incorrect input. Your input had the #{character_name.class} class instead of the string class. Name your vertically challenged wizard. Input hit name  "
        character_name=gets.chomp
    end
end

def room1()
puts"berättarrösten förklarar hur trollkarlen går in i första rummet och vad han ser där. saker ligger överallt och de kan man tjäla"
puts"U WANNA STEAL? input YES or NO"
    steal()


end
def room2()

end
def shop()
    puts" Shopkeeper - Welcome to the shop!"
    puts "Your current stats are:"\t
    puts power \t
    puts altitude \t
    puts hp \t
    puts dodge_chance \t
    puts"HP: energy drink: 10 cashmoneycash (+5 power)  \t ALTITUDE BOOSTERS: footstool: 13 cashmoneycash (+40cm altitude) shoe lifts: 6 cashmoneycash (+15cm altitude) \t ITEMS: rollerblades: 14 cashmoneycash (+0.3 dodge chance)" \t
    puts"Shopkeeper - What would you like to purchase?"
    purchase = gets.chomp
    if purchase == "energy drink"
        cashmoneycash = cashmoneycash - 10
        if cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" \t
            puts"Shopkeeper - GET OUT OF MY SHOP YOU MIDGET SCOUNDREL!"
            cashmoneycash = cashmoneycash + 10
            main_game_loop()
        end
        power = power + 5
    elsif
        purchase == "footstool"
        cashmoneycash = cashmoneycash - 13
        if cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" \t
            puts"Shopkeeper - GET OUT OF MY SHOP YOU MIDGET SCOUNDREL!"
            cashmoneycash = cashmoneycash + 13
            main_game_loop()
        end
        altitude = altitude + 40
    elsif
        purchase == "rollerblades"
        cashmoneycash = cashmoneycash - 14
        if cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" \t
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            cashmoneycash = cashmoneycash + 14
            main_game_loop()
        end
        dodge_chance = dodge_chance + 0.3
    elsif
        purchase == "shoe lifts"
        cashmoneycash = cashmoneycash - 8
        if cashmoneycash <= 0 
            puts"Unable to purchase due to insufficient funds" \t
            puts"Shopkeeper - GET OUT OF MY SHOP YOU DWARF SCOUNDREL!"
            cashmoneycash = cashmoneycash + 8
            main_game_loop()
        end
        altitude = altitude + 15
    end
end
def room3()

end
def room4()

end
def steal()
    if rand(1..10)==1
        puts"your attempt at stealing has failed and you were thrown out onto the street. GAME OVER"
        puts"if you want to play again input yes, otherwise input no"
        restart_input=get.chomp
        while restart_input.class != String || restart_input != "yes" || restart_input != "no" 
           puts"Incorrect input. Your input had the #{start_input.class} class and was #{start_input}. if you want to play again input yes, otherwise input no"
           restart_input=get.chomp
        end
        if restart_input == no
            gamestate = "stop"
        end
    else
        found_cash = rand(10..20)
        puts "you stole #{found_cash} cashmoneycash"
        cashmoneycash += found_cash
    end
end
def fight(enemy_name, hp, damage)



    if hp <= 0 
        gamestate = "stop"
        puts"if you want to play again. input yes otherwise input no"
    end
end


main_game_loop()
