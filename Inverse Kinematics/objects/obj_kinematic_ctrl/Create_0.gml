var length = 10;
segment_ammount = 30;

segment_array[0] = new ik_segment_root(100,100, length); //think like the "hand" of the arm
for(var i = 1; i < segment_ammount; ++i){
	segment_array[i] = new ik_segment(length, i); //likewise think limbs for the hand
}
