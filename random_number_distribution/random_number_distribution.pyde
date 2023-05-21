global randomCounts

def setup():
    size(640, 240)

def draw():
    
    background(0)
    index = random(10)
    randomCounts[index] += 1
    stroke(0)
    fill(145)
    
    w = width /len(randomCounts)
    for x in range(len(randomCounts)):
        rect(x * w, height - randomCounts[x], w - 1, randomCounts[x])
