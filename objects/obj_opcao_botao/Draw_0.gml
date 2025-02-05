draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
draw_text_color(x, y, texto, cor_texto, cor_texto, cor_texto, cor_texto, target_alpha);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
