public void Notes(){
 p_eleves = false;
 p_notes = true;
 background(255);
 for(int i = 0;i < eleves.length; i++){
  fill(0);
  textSize(15);
  text(eleves[i],200,i*height/40);
  int note = round(random(0,20));
  text(note,350,i*height/40);
 }
 fill(255);
 stroke(0);
 strokeWeight(5);
 rect(width/1.3,50,width/6,height/10,20);
}

public void Eleves(){
 p_notes = false;
 p_eleves = true;
 background(255);
 for(int i = 0;i < eleves.length; i++){
  fill(0);
  textSize(15);
  text("N°"+i,50,i*height/40);
  text(eleves[i],200,i*height/40);   
 }
 fill(255);
 stroke(0);
 strokeWeight(5);
 rect(width/1.3,50,width/6,height/10,20);
}