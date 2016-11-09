// Libraries

import controlP5.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


// Files etc
Minim minim;
AudioPlayer music;
AudioInput input;
PImage load_img;
PImage volume_img;
PImage volume_f_img;
ControlP5 gui;
String[] eleves = {"","élève 1","élève 2","élève 3"};
  // Setup
boolean p_notes = false;
boolean p_eleves = false;  
 
 
public void setup(){
  

 size(1280,720);
 background(0, 182, 255);

 
 
 surface.setTitle("GERNG");
 surface.setResizable(true);
 PImage titlebaricon = loadImage("explosion.png");
 surface.setIcon(titlebaricon);

  /* PImage volume_img = loadImage("headphone.png");
  PImage volume_f_img = loadImage("headphone_f.png"); */
  
  
 minim = new Minim(this);
 music = minim.loadFile("plectrum.mp3");
 music.play();
}





public void draw(){
   if((!p_notes) && (!p_eleves)){
     textSize(50);
     textAlign(CENTER);
     int r = round(random(0,255));
     int g = round(random(0,255));
     int b = round(random(0,255));
     fill(r,g,b);
     delay(100);
     text("GERNG #7estbien",width/2,100);
     fill(255);
     stroke(0);
     strokeWeight(5);
     rect(width/4,250,width/2,100,20);
     rect(width/4,400,width/2,100,20);
     fill(0);
     textAlign(CENTER);
     text("Tableau de notes",width/2,325);
     text("Liste des élèves",width/2,475);
   }
}  






public void mousePressed(){
  if(mouseX>width/4 && mouseX <width/4+width/2 && mouseY>250 && mouseY <250+100){
    if((!p_notes) && (!p_eleves)){
      Notes(); 
    }
   } 
    if(mouseX>width/4 && mouseX <width/4+width/2 && mouseY>400 && mouseY <400+100){
      if((!p_eleves) && (!p_notes)){
        Eleves();
      }  
  }
    
  if(mouseX>width/1.3 && mouseX <width/1.3+width/6 && mouseY>50 && mouseY <50+height/10){
    if(p_notes){
      Notes();
    }else if(p_eleves){
      Eleves();
    }
  }
    
}