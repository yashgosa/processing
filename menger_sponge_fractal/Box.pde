class Box{
  PVector pos; // Whats a pVector??
  float size;
  
  Box(float x, float y, float z, float size_){
    pos = new PVector(x, y, z);
    size = size_;
  }
  
 ArrayList<Box> generate(){
    ArrayList<Box> boxes = new ArrayList<Box>();
  for (int x = -1; x < 2; x++){
    for (int y = -1; y < 2; y++){
      for (int z = -1; z < 2; z++){
        
        int sum = abs(x) + abs(y) + abs(z)
        if (sum > 1){
        float newSize = size/3;
         Box b = new Box(pos.x + x*newSize, pos.y + y*newSize, pos.z + z*newSize, newSize);
          boxes.add(b);}
        }
      }
    }
    return boxes;
  }
  
  void show(){
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(size);
    popMatrix();
    // Whats pushMatrix and PopMatrix??
  }
}
  
