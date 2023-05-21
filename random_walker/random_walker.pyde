from Walker import Walker

def setup():
    size(400, 400)
    global w
    w = Walker()
    background(0)
def draw():
    w.update()
    w.show()
    
