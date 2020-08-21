
# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength
    
    def receiveDamage(self, damage):
        self.health = self.health - damage

# Viking


class Viking(Soldier):
    def __init__(self, name, health, strength):
        super().__init__(health, strength)
        self.name = name
    
    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"
    
    @staticmethod
    def battleCry():
        return "Odin Owns You All!"


# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        super().__init__(health, strength)

    def receiveDamage(self, damage):
        self.health = self.health - damage
        if self.health > 0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return "A Saxon has died in combat"


# War


class War:
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []
    
    def addViking(self, viking):
        self.vikingArmy.append(viking)
    
    def addSaxon(self, saxon):
        saxonArmy.append(saxon)
    
    def vikingAttack(self):
        vikingo = random.choice(vikingArmy):
        saxono = random.choice(saxonArmy):
                i.receiveDamage = self.strength


    def saxonAttack():

    def showStatus(self):
        if len(selvikingArmy) == 0:
            return "Vikings have won the war of the century!"
        elif len(saxonArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        elif len(vikingArmy) == len(saxonArmy) == 1:
            return "Vikings and Saxons are still in the thick of battle."
        pass


