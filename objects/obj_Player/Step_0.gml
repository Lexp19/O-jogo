#region Controles
var _right, _left, _jump;

_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_jump = keyboard_check(vk_space);

#endregion

#region Movimentação

var _move = _right - _left
	
velh = _move * spd;
	
velv = velv + grv
	
if(velh != 0){

	image_xscale = sign(velh);	//Mudar Direção da Sprite

} 

//Colisão Horizontal

if(place_meeting(x + velh, y, obj_block)){

	while(!place_meeting(x + sign(velh), y, obj_block)){
	
		x = x + sign(velh)
	
	}
	
	velh = 0;

}

x = x + velh;

//Colisão Vertical

if(place_meeting(x, y + velv, obj_block)){

	while(!place_meeting(x, y + sign(velv), obj_block)){
	
		y = y + sign(velv)
	
	}
	
	velv = 0;

}

y = y + velv;

//Jump

if (place_meeting(x, y+1, obj_block) and _jump){
	
	
	velv -= 10;

}
#endregion