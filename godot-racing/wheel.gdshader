shader_type spatial;
uniform float speed;
float atan2(float Y, float X){
	if(X>0.0){
		return atan(Y/X);
	} else if(X==0.0){
		if(Y>0.0){
			return 3.141/2.0;
		} else {
			return -3.141/2.0;
		}
	} else {
		if(Y>=0.0){
			return atan(Y/X)+3.141;
		} else {
			return atan(Y/X)-3.141;
		}
	}
}
void vertex(){
	VERTEX.x=sqrt(pow(VERTEX.x,2)+pow(VERTEX.y,2))*cos(atan2(VERTEX.y,VERTEX.x)+(speed*TIME));
	VERTEX.y=sqrt(pow(VERTEX.x,2)+pow(VERTEX.y,2))*sin(atan2(VERTEX.y,VERTEX.x)+(speed*TIME));
}