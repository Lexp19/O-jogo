function scr_Player_Base(){
	
#region Configurações do jogo

if(global.life <= 0){

	game_restart();

}

#endregion


#region Controles
var _right, _left, _jump, _shoot;

_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_jump = keyboard_check(vk_space);
_shoot = keyboard_check_pressed(ord("K"))

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

#region Tiro

var flipped = direction;
var gun_x = (x + 4) * (flipped);
var _xx = x + lengthdir_x(50, image_angle);
var y_offset = lengthdir_y(-20, image_angle);

if _shoot and global.bullets > 0{

	//AUDIO_PLAY_SOUND
	with (instance_create_layer(_xx, y - 30, "shoot", obj_shoot)){
		
		//Redução balas
		global.bullets --;
		//Velocidade
		speed = 10;
		//Direção
		direction = -90 + 90 * other.image_xscale;
		//ângulo
		image_angle = direction
	
	}

}

#endregion
}