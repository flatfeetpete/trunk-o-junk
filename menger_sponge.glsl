# Menger sponge on twigl https://twigl.app/?ol=true&ss=-NQuR3bViCcdD6yYj2XE
# Reformatting to try to grok how it works.

vec3 P,Q;
float i,e=exp(mod(t*.5,log(3.))),d=e;
for( ; 
     i++<99.&&d>1e-4;
     )
{
  Q=(P+.4)/e-1.;
  for(int j=0;j++<9;Q=Q*3.-3.){
    Q=abs(Q)-1.;
    Q = 
      Q.y>Q.x ? 
      Q.yxz
      :
      Q;
    Q = Q.z>Q.y ?
      Q.xzy:Q;
    Q.z=abs(Q.z);
  }
  d=(length(Q)-6.)/2e4*e;
  P+=
    normalize(vec3(FC.xy-r*.5,-r.y)) * 
    rotate3D(1.,vec3(3,-2,-1))*d;
}
o+=9./i;
