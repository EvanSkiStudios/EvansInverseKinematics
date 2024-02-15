var length = 50;
var segments = 20;

var t = 0;
segmentRoot = new fk_segment_root(x, room_height - 10, length, 90,t);


segment_current = segmentRoot;
for (var i = 0; i < segments; ++i){
	length = length * 0.75;
	t = random(100);
	segment_next = new fk_segment(segment_current,length,,t);
	segment_current.child = segment_next;
	segment_current = segment_next;
}
