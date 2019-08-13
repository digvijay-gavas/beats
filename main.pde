void setup()
{
  //size(500,100);
  try{
  initiateArray();
  calculatewaveform();
  sound();
  }catch(Exception e){text(e.getMessage(),1,10);}
  //orientation(LANDSCAPE);  
} 
void draw()
{
  //background(0);
  background(0, 50, 100,70);
 // text(count,1,10);
 text("  Created by DIGVIJAY GAVAS digvijay.gavas@gmail.com powered by Processing",0,displayHeight-5);
  for(int i=0;i<count;i++)
  {
    float A1= ( 100*(float) ( displayHeight- y[i]))/((float)displayHeight);
    text("  "+(int)x[i]+" "+(int)y[i]+"  A"+i+"="+(int)A1+"%",0,10+i*13);
    //ellipse(x[i],y[i],500*pt[i],500*pt[i]);
    //ellipse(x[i],y[i],500*p[i],500*p[i]);
    line(0,y[i],x[i],y[i]);
    line(x[i],displayHeight,x[i],y[i]);
    text((int)x[i]+" Hz",x[i],y[i]-200);
  }
}
