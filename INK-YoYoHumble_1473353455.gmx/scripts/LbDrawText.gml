///LbDrawText(x, y, String, Num, Min, Sec, Ms, fontColor, bgColor);

var text = argument2;

if (argument3 != -1)
    text += " " + string(argument3);
    
text += ": " 
      + string(argument4) 
      + ":" 
      + ZeroesSec(argument5)
      + string(argument5)
      + "."
      + ZeroesMs(argument6)
      + string(argument6);

draw_set_color(argument8);
draw_text(argument0 + 1, argument1 + 1, text);
draw_set_color(argument7);
draw_text(argument0, argument1, text);

