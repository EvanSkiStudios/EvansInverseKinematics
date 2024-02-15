function fk_segment_root(_Position_x, _Position_y, _length, _angle=0, _anglePhase=0) constructor{
	_x = _Position_x;
	_y = _Position_y;
	length = _length;
	angle = _angle;
	selfAngle = angle;
	anglePhase = _anglePhase;
	parent = noone;
	child = noone;
	
	
	calculateEndPoint = function(){
		offset_x = lengthdir_x(length, angle);
		offset_y = lengthdir_y(length, angle);
		
		EndPoint = [_x + offset_x, _y + offset_y];
	};
	calculateEndPoint();
	
	update = function(){
		angle = selfAngle;
		if (parent != noone){
			_x = parent.EndPoint[0];
			_y = parent.EndPoint[1];
			angle += parent.angle;
		}
		calculateEndPoint();
	}
	
	wiggle = function(){
		calculateEndPoint();
		if (parent != noone){
			maxangle = 10;
			minangle = -10;
			selfAngle = map_value(sin(anglePhase), -1, 1, minangle, maxangle);
			anglePhase += 0.03;
		}
	}
	
	
	show = function(){
		draw_line(_x, _y, EndPoint[0], EndPoint[1]);		
	};
}

function fk_segment(_parent, _length, _angle=0, _anglePhase=0) : fk_segment_root(0,0,_length,_angle,_anglePhase) constructor{
	parent = _parent;
	_x = parent.EndPoint[0];
	_y = parent.EndPoint[1];
	calculateEndPoint();
}