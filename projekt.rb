
def main_game_loop()
    cashmoneycash=0
    power=1
    hp=444
    base_altitude=1.49
    altitude=1.49
    room=1
    gamestate="go"
    restart
    name
    #Sleight of hand 1-10 att misslyckas, Kan rulla en gång varje rum
    #Lyckas: Få mellan 10-20 cashmoneycash 
    #Misslyckas: Börja om spelet 
    while gamestate == "go"
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

def room1()


end
def room2()

end
def shop()

end
def room3()

end
def room4()

end
def fight(enemy_name, hp, damage)

end

