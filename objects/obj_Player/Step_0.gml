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

	image_xscale = sign(velh);

} 

#endregion