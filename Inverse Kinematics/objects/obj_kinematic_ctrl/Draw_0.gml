draw_set_color(c_white);

var len = array_length(segment_array);

//set end point to get
segmentEnd = segment_array[len - 1];
segmentEnd.follow(mouse_x, mouse_y);
segmentEnd.update();	

// update each segment in array - not counting segment above
for (var i = len-2; i>=0; --i){
	var last_segment = segment_array[i+1];
	segment_array[i].follow(last_segment._x, last_segment._y);
	segment_array[i].update();
}

// Ancor the entire segment array
segment_array[0].setFixedPoint(x, y);

// update segments to be in correct positions - (prevents weird stretching)
for (var i = 1; i < len; ++i){
	segment_array[i].setFixedPoint(segment_array[i - 1].EndPoint[0], segment_array[i - 1].EndPoint[1]);	
}


// draw
for (var i = len-1; i>=0; --i){
	segment_array[i].show();
}