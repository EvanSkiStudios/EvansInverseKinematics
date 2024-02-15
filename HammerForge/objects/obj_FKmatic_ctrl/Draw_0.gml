
segmentNext = segmentRoot;
while(segmentNext != noone){
	segmentNext.wiggle();
	segmentNext.update();
	segmentNext.show();
	segmentNext = segmentNext.child;
}