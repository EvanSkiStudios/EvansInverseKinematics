function ik_segment_root(_Position_x, _Position_y, _length = 100) constructor {
	_x = _Position_x;
	_y = _Position_y;
	length = _length;
	angle = 0;
	
	follow = function(target_x, target_y){
		dir = point_direction(_x, _y, target_x, target_y);
		angle = dir;
		
		_x = ( target_x - lengthdir_x(length, angle) );
		_y = ( target_y - lengthdir_y(length, angle) );
	};
	
	setFixedPoint = function(_point_x, _point_y){
		_x = _point_x;
		_y = _point_y;
		
		calculateEndPoint();
	};
	
	calculateEndPoint = function(){
		offset_x = lengthdir_x(length, angle);
		offset_y = lengthdir_y(length, angle);
		
		EndPoint = [_x + offset_x, _y + offset_y];
	};
	
	//set end location for segment
	calculateEndPoint();
	
	update = function(){
		calculateEndPoint();	
	};
	
	show = function(){
		draw_line(_x, _y, EndPoint[0], EndPoint[1]);		
	};
}


function ik_segment(_length = 100, _index=0) constructor{
	_x = 0;
	_y = 0;
	length = _length;
	angle = 0;
	index = _index;
	
	follow = function(target_x, target_y){
		dir = point_direction(_x, _y, target_x, target_y);
		angle = dir;
		
		_x = ( target_x - lengthdir_x(length, angle) );
		_y = ( target_y - lengthdir_y(length, angle) );
	};
	
	setFixedPoint = function(_point_x, _point_y){
		_x = _point_x;
		_y = _point_y;
		
		calculateEndPoint();
	};
	
	calculateEndPoint = function(){
		offset_x = lengthdir_x(length, angle);
		offset_y = lengthdir_y(length, angle);
		
		EndPoint = [_x + offset_x, _y + offset_y];
	};
	
	update = function(){
		//follow(parent._x, parent._y);
		calculateEndPoint();	
	};
	
	show = function(){
		//draw_set_alpha(1 - ((index*10) / 100));
		draw_line(_x, _y, EndPoint[0], EndPoint[1]);
	};
	
	calculateEndPoint();
};