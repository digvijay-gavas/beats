import android.media.*;//AudioTrack;
import java.lang.Thread;
import java.lang.Runnable;

AudioTrack[] t=new AudioTrack[10];
int sampleRate=44100;
Thread trd;
void sound()
{
  for(int i=0;i<t.length;i++)
  {
    t[i]=new AudioTrack(AudioManager.STREAM_MUSIC, sampleRate ,AudioFormat.CHANNEL_OUT_MONO,AudioFormat.ENCODING_PCM_16BIT,4410,AudioTrack.MODE_STREAM);
    t[i].play();
  }
  
  trd=new Thread(new Runnable()
  {
    public void run()
    {
      while(true)
      { 
        try{
        for(int i=0;i<count;i++)
        {   
          short[] b1=d.get(i);
          t[i].write( b1,0,b1.length );
          t[i].flush();
        }}catch(Exception e){ text(e.getMessage(),1,10);}
      }
    }
  });
  trd.start();
} 

