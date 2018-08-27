import java.util.ArrayList;
int stopper = -1;

int ghostrX = 125; int ghostrY = 93;
int ghostbX = 180; int ghostbY = 190;
int ghostoX = 253; int ghostoY = 92;
int ghostpX = 40; int ghostpY = 340;
int ghostyX = 392; int ghostyY = 429;
int ghostgX = 282; int ghostgY = 387;
int ghosttX = 470; int ghosttY = 31;
float mouth = 0;
int counter;
float MouthSpeed = 0.125;
int pacx = 254;
  int pacspeed = 2;
  int ghostrspeed = 2;
  int ghostbspeed = 1;
  int ghostospeed = 2;
  int ghostpspeed = 1;
  int ghostyspeed = 2;
  int ghostgspeed = 1;
  int ghosttspeed = 1;
  
int coverupx = 0;
int coverupy = 0;
int pacy = 288;
ArrayList<DotLine> lineList = new ArrayList();


int stage;
int pause;
float lowerjaw = QUARTER_PI;
float upperjaw = PI+HALF_PI+QUARTER_PI;
PImage img; 
PImage img2;
PImage mainMenu;
PImage victory;
String letter = "N";
String letterRED = "E";



void setup() {

  size (513,513);
ellipseMode(CENTER);
rectMode(CENTER);
img = loadImage("pacmanheightmap3.jpg");
img2 = loadImage("GameOver.jpg");
  //startMenu
  mainMenu = loadImage("pacguibg.jpg");
  victory = loadImage("YouWin.jpg");

frameRate(60);
stage = 1;
ArrayList<Integer> list = new ArrayList<Integer>();

list.add(30);
list.add(70);
list.add(110);
list.add(150);
list.add(190);
list.add(230);
list.add(270);
list.add(310);
list.add(350);
list.add(390);
list.add(430);
list.add(470);
    
    lineList.add(new DotLine(list, 490));
list = new ArrayList();

list.add(30);
list.add(230);
list.add(280);
list.add(470);

        lineList.add(new DotLine(list, 460));

    
    list = new ArrayList();

list.add(30);
list.add(70);
list.add(120);
list.add(170);
list.add(200);
list.add(230);
list.add(280);
list.add(310);
list.add(340);
list.add(390);
list.add(430);
list.add(470);

     lineList.add(new DotLine(list, 440));

    
    list = new ArrayList();

list.add(70);
list.add(120);
list.add(175);
list.add(335);
list.add(390);
list.add(440);

      lineList.add(new DotLine(list, 410));

    
    list = new ArrayList();

list.add(30);
list.add(70);
list.add(120);
list.add(160);
list.add(200);
list.add(240);
list.add(280);
list.add(320);
list.add(360);
list.add(390);
list.add(440);
list.add(470);

      lineList.add(new DotLine(list, 390));

    
    list = new ArrayList();

list.add(30);
list.add(120);
list.add(230);
list.add(280);
list.add(390);
list.add(470);

    lineList.add(new DotLine(list, 360));

    
    list = new ArrayList();

list.add(30);
list.add(70);
list.add(110);
list.add(150);
list.add(190);
list.add(230);
list.add(280);
list.add(320);
list.add(360);
list.add(390);
list.add(430);
list.add(470);
    
    lineList.add(new DotLine(list, 340));

    
      list = new ArrayList();

list.add(120);
list.add(175);
list.add(335);
list.add(390);
    
    lineList.add(new DotLine(list, 315));

    
      list = new ArrayList();

list.add(120);
list.add(175);
list.add(205);
list.add(285);
list.add(335);
list.add(390);
    
    lineList.add(new DotLine(list, 290));

    
      list = new ArrayList();

list.add(70);
list.add(110);
list.add(150);
list.add(335);
list.add(360);
list.add(390);
list.add(430);
list.add(470);
    
    lineList.add(new DotLine(list, 240));

    
      list = new ArrayList();

list.add(120);
list.add(175);
list.add(335);
list.add(390);
    
        lineList.add(new DotLine(list, 210));

    
      list = new ArrayList();

list.add(120);
list.add(175);
list.add(205);
list.add(245);
list.add(285);
list.add(335);
list.add(390);

        lineList.add(new DotLine(list, 190));

    
      list = new ArrayList();


list.add(120);
list.add(230);
list.add(280);
list.add(390);



    lineList.add(new DotLine(list, 160));

    
      list = new ArrayList();

list.add(30);
list.add(60);
list.add(90);
list.add(120);
list.add(175);
list.add(205);
list.add(230);
list.add(285);
list.add(310);
list.add(335);
list.add(390);
list.add(430);
list.add(470);


    lineList.add(new DotLine(list, 140));
    
    
      list = new ArrayList();

list.add(30);
list.add(120);
list.add(175);
list.add(335);
list.add(390);
list.add(470);



    lineList.add(new DotLine(list, 120));
    
    
      list = new ArrayList();


list.add(30);
list.add(70);
list.add(110);
list.add(150);
list.add(190);
list.add(230);
list.add(270);
list.add(310);
list.add(350);
list.add(390);
list.add(430);
list.add(470);



    lineList.add(new DotLine(list, 90));
    
    
      list = new ArrayList();

list.add(30);
list.add(120);
list.add(230);
list.add(280);
list.add(390);
list.add(470);

    lineList.add(new DotLine(list, 60));
    
    
      list = new ArrayList();


list.add(30);
list.add(70);
list.add(110);
list.add(150);
list.add(190);
list.add(230);
list.add(280);
list.add(320);
list.add(360);
list.add(400);
list.add(440);
list.add(470);

    lineList.add(new DotLine(list, 30));
   

}

void draw() {
  if (stopper == -2) {
  background(victory);
  
  }

  
  if(stopper == -1) {
  background(mainMenu);

  if (keyPressed == true) {stopper = 0;}
  
  }
  
if (stopper == 0){
// pacman color detectors
if (counter >= 146) {stopper = -2;}

color c;
color d;
color f;
// pacman color detectors end





rect(253, 320, 6,3);


 
mouth = mouth + MouthSpeed;
background(img);
fill(250,0,0);
textSize(20);
text("Score: " + counter, 20, 29);


fill(255, 238, 0);
arc(pacx,pacy, 25, 25, lowerjaw - mouth, upperjaw + mouth , PIE); // pacman


println(mouseX, mouseY);
 
if ( mouth <= 0) {
MouthSpeed = MouthSpeed*-1;
} if (mouth >= 0.7) {
MouthSpeed = MouthSpeed*-1;
} // pacman created
switch(letter)
{ 
case "A": lowerjaw = -QUARTER_PI; upperjaw = PI+QUARTER_PI; // MOVING UP (ANIMATION + DETECTION OF COLOR)
 c = get(pacx, pacy - 18);
 d = get(pacx + 12, pacy - 18);
 f = get(pacx - 12, pacy - 18);
break;
case "B": lowerjaw = -PI-QUARTER_PI; upperjaw = QUARTER_PI ; // MOVING DOWN (ANIMATION + DETECTION OF COLOR)
 c = get(pacx, pacy + 18);
 d = get(pacx + 12, pacy + 18);
 f = get(pacx - 12, pacy + 18);
break;
case "C": lowerjaw = -HALF_PI-QUARTER_PI; upperjaw = PI-QUARTER_PI; // MOVING LEFT (ANIMATION + DETECTION OF COLOR)
 c = get(pacx - 18, pacy);
 d = get(pacx- 18, pacy + 12);
 f = get(pacx - 18, pacy - 12);
break;
case "D": lowerjaw = QUARTER_PI; upperjaw = PI+HALF_PI+QUARTER_PI; // MOVING RIGHT (ANIMATION + DETECTION OF COLOR)
 c = get(pacx + 18, pacy);
 d = get(pacx + 18, pacy + 12);
 f = get(pacx + 18, pacy - 12);
break;
default:
 c = get(pacx - 18, pacy);
 d = get(pacx- 18, pacy + 10);
 f = get(pacx - 18, pacy - 10);
break;
}


color typeofwall = get(256,322);

fill(f);
rect(55,25,1,1);
fill(c);
rect(70, 25, 1,1);
fill(d);
rect(85,25,1,1);



fill(typeofwall);
rect(410,400,1,1);






if (keyPressed == true) // moving up
{  if (key == CODED)
{ if (keyCode == UP)
{ letter = "A";
if (typeofwall != c && typeofwall != d && typeofwall != f) {
pacy = pacy-pacspeed;
}

}

}
}

if (keyPressed == true) // moving down
{  if (key == CODED)
{ if (keyCode == DOWN)
{ letter = "B";

if (typeofwall != c && typeofwall != d && typeofwall != f) {
pacy = pacy+pacspeed;
}

}

}
}

if (keyPressed == true) {// moving left
 if (key == CODED) {
 if (keyCode == LEFT ) {
 letter = "C";
if (typeofwall != c && typeofwall != d && typeofwall != f) {
pacx = pacx-pacspeed;
}

 }

 }
 }
 
 if (keyPressed == true) { // moving right
  if (key == CODED) {
  if (keyCode == RIGHT)
{ letter = "D";
if (typeofwall != c && typeofwall != d && typeofwall != f) {
pacx = pacx+pacspeed;
}

}

}
}











// tunnel code
if (pacx >= 30 && pacx <= 40 && pacy >=231 && pacy <= 281 ) {
pacx = 499;
pacy = 241;

}

if (pacx >= 500 && pacx <= 520 && pacy >=231 && pacy <= 281 ) {
pacx = 41;
pacy = 241;

}
// Showing the score

// pacdots implemented in code
for (DotLine line : lineList) {
  line.update(pacx, pacy);
  line.run();
  line.find();
}

// ghosts drawn
fill(255,0,0);
rect(ghostrX,ghostrY, 20,20,7);
fill(0,0,255);
rect(ghostbX,ghostbY, 20,20,7);
fill(253,106,2);
rect(ghostoX,ghostoY, 20,20,7);
fill(248,24,148);
rect(ghostpX,ghostpY, 20,20,7);
fill(255,211,0);
rect(ghostyX,ghostyY, 20,20,7);
fill(119,118,114);
rect(ghostgX,ghostgY, 20,20,7);
fill(115,220,105);
rect(ghosttX,ghosttY, 20,20,7);




// red ghost moving
if (ghostrY <= 30 || ghostrY >= 430) {ghostrspeed = ghostrspeed*-1;}
ghostrY = ghostrY + ghostrspeed;
// blue ghost moving
if (ghostbX <= 179 || ghostbX >= 335) {ghostbspeed = ghostbspeed*-1;}
ghostbX = ghostbX + ghostbspeed;
// orange ghost moving
if (ghostoX <= 35 || ghostoX >= 470) {ghostospeed = ghostospeed*-1;}
ghostoX = ghostoX + ghostospeed;
//pink ghost moving
if (ghostpX <= 39 || ghostpX >= 230) {ghostpspeed = ghostpspeed*-1;}
ghostpX = ghostpX + ghostpspeed;
// yellow ghost moving
if (ghostyY <= 30 || ghostyY >= 430) {ghostyspeed = ghostyspeed*-1;}
ghostyY = ghostyY + ghostyspeed;
//grey ghost moving
if (ghostgX <= 120 || ghostgX >= 390) {ghostgspeed = ghostgspeed*-1;}
ghostgX = ghostgX + ghostgspeed;
//turqoise ghost moving
if (ghosttY <= 30 || ghosttY >= 140) {ghosttspeed = ghosttspeed*-1;}
ghosttY = ghosttY + ghosttspeed;
// GHOST MOVEMENT END

//GHOST COLLISION
if (ghostrX <= pacx + 10 && ghostrX >= pacx - 10 && ghostrY <= pacy + 10 && ghostrY >= pacy - 10||
ghostbX <= pacx + 20 && ghostbX >= pacx - 20 && ghostbY <= pacy + 20 && ghostbY >= pacy - 20||
ghostoX <= pacx + 20 && ghostoX >= pacx - 20 && ghostoY <= pacy + 20 && ghostoY >= pacy - 20||
ghostpX <= pacx + 20 && ghostpX >= pacx - 20 && ghostpY <= pacy + 20 && ghostpY >= pacy - 20||
ghostyX <= pacx + 20 && ghostyX >= pacx - 20 && ghostyY <= pacy + 20 && ghostyY >= pacy - 20||
ghostgX <= pacx + 20 && ghostgX >= pacx - 20 && ghostgY <= pacy + 20 && ghostgY >= pacy - 20||
ghosttX <= pacx + 20 && ghosttX >= pacx - 20 && ghosttY <= pacy + 20 && ghosttY >= pacy - 20

){stopper= 1;    
}
} // stopper range end
if (stopper == 1) {
  background(img2);
  textSize(40);
  fill(255,0,144);
  text("Score: " + counter, 150, 400);
}

}
// pacdot class
 class  DotLine {
   ArrayList<Integer> storer = new ArrayList();
   int removerX;
   int XcordPac;
   int YcordPac; 
    ArrayList<Integer> MyXPrivate = new ArrayList();
   int Y;
   
   DotLine(ArrayList<Integer> Xlist, int Ycoord){
   MyXPrivate = Xlist;
   Y = Ycoord;
   }
   
 
   void update(int paccy, int paccx) {
     XcordPac = paccy;
     YcordPac = paccx;
    
   }
   
  void run(){
     fill(0,255,0);
 
  
     
     for (int X : MyXPrivate) {
       fill(0,255,0);
       
       ellipse(X,Y, 5, 5);
     }
   }
   
   public ArrayList returnerX(){
   return(MyXPrivate);
   }
   
  
   
    public void  diminishStore(int XX){
       storer.add(XX);
   }
     public void  diminishFinish(){
       for (int Xst : storer){
       int z = MyXPrivate.indexOf(Xst);
       MyXPrivate.remove(z);
       counter++;
       }
       for (int i = 0; i <= storer.size() - 1; i++){
       storer.remove(i);
       }
   }

   void find(){
    
    
    
     
     for(int Xco : MyXPrivate) {
   if (Xco <= XcordPac + 10 && Xco >= XcordPac - 10 && Y <= YcordPac + 10 && Y >= YcordPac - 10) {
     diminishStore(Xco);
   }
   
   }
diminishFinish();


}
 
 
 }
