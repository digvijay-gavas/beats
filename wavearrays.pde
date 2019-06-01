ArrayList<short[]> d=new ArrayList<short[]>(10);
short[] b=new short[4410];

void initiateArray()
{
  for(int i=0;i<10;i++)
  {
    d.add(i,b);
  }
}
void calculatewaveform()
{
  for(int i=0;i<count;i++)
  {
    b=new short[(int)((float)sampleRate/(float)x[i])];
    float w= 6.2832*(float)x[i]/(float)sampleRate;
    float A=  (float) ( displayHeight- y[i])/(float)displayHeight;
    for(int j=0;j<b.length;j++)
    {
      b[j]= (short)((float)Short.MAX_VALUE*A*sin(w*j));
    }
    d.set(i,b);
  }
}