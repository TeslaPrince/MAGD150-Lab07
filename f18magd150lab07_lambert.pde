float b=0;
float c=#6E0A0A;
float deg=0;
float rad=0;
float s=2;
PVector pos;
PVector vel;
PVector size;

void setup(){
 size(1000, 800);
 background(b);

  rect(0,400,width,200);
  pos = new PVector(0,20);
  vel=new PVector(2,2);
  size= new PVector(50,50);

}

void draw(){
//change background from night to day
  background(b);
  b=b+1;

//Ground
  fill(#867E14);
    c=c+1;
  rect(0,400,width,1000);
  translate(400,100);
  rotate(rad);

//Moon that cycles to day
  fill(#A87F7F);
  scale(s);
  ellipse(pos.x,pos.y,size.x,size.y);

   if(s < 2){
     s=s+.5; 
   }

   deg=deg+1;
   rad = radians(deg);

  if(pos.x < width){
     pos.add(1,0); 
     vel.add(1,5);
  } else {
      pos.sub(100,0);
  }

  if(pos.y > height){
     pos.sub(100,0);
  }

  if(pos.x > width){
    size.sub(5,5);
  }
}
