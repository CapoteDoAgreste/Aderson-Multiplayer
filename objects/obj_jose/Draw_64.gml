#region dia01
if system.dia == 1{
	if text ==1{
		speed = 0;
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Desculpa por trombar com você!",30,576);
	}

	if text ==2{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Desculpa por estar no meio.",30,576);
	}

	if text ==3{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Tenho que voltar pra casa, esqueci meu caderno e modo aqui perto, me chamo josé, até!",30,576);
	}
	if text ==4{
		image_alpha = image_alpha = 0.02;
	}
	if image_alpha <= 0{
		instance_destroy(self);
		instance_destroy(obj_btn_sim);
		obj_player.text =1;
	}
}
if system.dia == 2{
	if text ==1{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Eae meu rei, do que precisas?",30,576);
	}

	if text ==2{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Cara, a professora mandou falar com a monitora de ciências, tu viu ela?",30,576);
	}

	if text ==3{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Ela deve estar na biblioteca.",30,576);
	}

	if text ==4{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Se quiser, eu te apresento à ela.",30,576);
	}
	if text ==4{
		draw_sprite(spr_caixa,0,640,576);
		draw_text_ext(340,global.text_y,"Obrigado!",30,576);
	}
	if text ==5{
		instance_destroy(obj_btn_sim);
		state = 4;
	}
}
	#endregion