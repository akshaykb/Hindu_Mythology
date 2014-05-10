PImage hanuman;
PImage ganesh;
PImage vishnu;
PImage shivji;
PImage home;
PImage about;
PImage swastika;
PImage ui;
RadioButtons button;
Maxim max;
AudioPlayer hanumanplayer;
AudioPlayer ganeshplayer;
AudioPlayer vishnuplayer;
AudioPlayer shivjiplayer;

int hanumanx=124;
int hanumany=97;
int ganeshx=529;
int ganeshy=91;
int vishnux=528;
int vishnuy=351;
int shivjix=117;
int shivjiy=351;


void setup()
{
  size(640,437);

  String [] rnames={"Songs", "About"};
  button=new RadioButtons(2,400,400,50,30,HORIZONTAL);
  button.setNames(rnames);
    
  hanuman=loadImage("hanuman.jpg");
  ganesh=loadImage("ganesh.jpg");
  vishnu=loadImage("vishnu.jpg");
  shivji=loadImage("shivji.jpg");
  home=loadImage("home.jpg");
  about=loadImage("about.jpg");
  swastika=loadImage("swastika.png");
  ui=loadImage("ui.jpg");
  
  max=new Maxim(this);
  
  
    hanumanplayer=max.loadFile("hanuman.wav");
    ganeshplayer=max.loadFile("ganesh.wav");
    vishnuplayer=max.loadFile("vishnu.wav");
    shivjiplayer=max.loadFile("shivji.wav");
  
    hanumanplayer.setLooping(false);
    ganeshplayer.setLooping(false);
    vishnuplayer.setLooping(false);
    shivjiplayer.setLooping(false);


  background(0);
  
}

void draw()
{
  
  image(home,0,0);
  if(button.get()==0){
  image(ui,0,0);
  image(hanuman,0,0);
  image(shivji,0,250);
  image(ganesh,400,0);
  image(vishnu,400,250);
}
  if(button.get()==1){
  image(about,0,0);
  }
  button.display();

}

void mouseReleased()
{
  button.mouseReleased();
  
  if(dist(mouseX,mouseY,hanumanx,hanumany)<hanuman.width/2)
  {
    shivjiplayer.stop();
    ganeshplayer.stop();
    vishnuplayer.stop();
    hanumanplayer.cue(0);
    hanumanplayer.play();
  }
  
   if(dist(mouseX,mouseY,shivjix,shivjiy)<shivji.width/2)
  {
    ganeshplayer.stop();
    hanumanplayer.stop();
    vishnuplayer.stop();
    shivjiplayer.cue(0);
    shivjiplayer.play();
  }
  
   if(dist(mouseX,mouseY,ganeshx,ganeshy)<ganesh.width/2)
  {
    hanumanplayer.stop();
    shivjiplayer.stop();
    vishnuplayer.stop();
    ganeshplayer.cue(0);
    ganeshplayer.play();
  }
  
   if(dist(mouseX,mouseY,vishnux,vishnuy)<vishnu.width/2)
  {
    hanumanplayer.stop();
    shivjiplayer.stop();
    ganeshplayer.stop();
    vishnuplayer.cue(0);
    vishnuplayer.play();
  }
}

  
  
  




