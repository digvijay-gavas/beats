import android.view.MotionEvent;
 
String touchEvent = "";    // string for touch event type
float[] x=new float[10]; //10 touches
float[] y=new float[10];
float[] p=new float[10];
float[] pt=new float[10];
int count=0; 

public boolean surfaceTouchEvent(MotionEvent me) {
 count= me.getPointerCount();
 for(int i=0;i<count;i++)
 {
  x[i] = me.getX(i);                              // get x/y coords of touch event
  y[i] = me.getY(i);
  p[i] = me.getPressure(i);                // get pressure and size
  pt[i] = me.getSize(i);
  
 }
 calculatewaveform();
 
 int action = me.getActionMasked();          // get code for action
  switch (action) 
  {                          
    case MotionEvent.ACTION_DOWN:
      break;
    case MotionEvent.ACTION_UP:
      count=0;
      break;
    case MotionEvent.ACTION_MOVE:
      break;
    default: 
  }
  
  // If you want the variables for motionX/motionY, mouseX/mouseY etc.
  // to work properly, you'll need to call super.surfaceTouchEvent().
  return super.surfaceTouchEvent(me);
}


/*@Override
public boolean dispatchTouchEvent(MotionEvent event) 
{
 count= event.getPointerCount();
 for(int i=0;i<count;i++)
 {
  x[i] = event.getX(i);                              // get x/y coords of touch event
  y[i] = event.getY(i);
  p[i] = event.getPressure(i);                // get pressure and size
  pt[i] = event.getSize(i);
  
 }

  
  int action = event.getActionMasked();          // get code for action
  switch (action) 
  {                          
    case MotionEvent.ACTION_DOWN:
      break;
    case MotionEvent.ACTION_UP:
      count=0;
      break;
    case MotionEvent.ACTION_MOVE:
      break;
    default:
  }
  calculatewaveform();
  return super.dispatchTouchEvent(event);        // pass data along when done!
}*/