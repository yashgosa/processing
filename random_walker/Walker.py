class Walker:
    def __init__(self):
        self.x = width/2
        self.y = height/2
        
    def show(self):
        stroke(255)
        point(self.x, self.y)
        
    def update(self):
        vx = random(-2, 2)
        vy = random(-2, 2)
        
        self.x += vx
        self.y += vy

        self.x = constrain(self.x, 0, width - 1)
        self.y = constrain(self.y, 0, height - 1)


        
