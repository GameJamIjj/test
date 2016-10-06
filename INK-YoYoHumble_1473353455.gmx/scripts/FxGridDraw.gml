/// FxGridDraw(index, x, y, tex);

var h, w, xtex, ytex, xtex1, xtex2, ytex1, xx, yy;

h    = eg_h[argument0];
w    = eg_w[argument0] - 1;
xtex = texture_get_width(argument3) / w;
ytex = texture_get_height(argument3) / (h - 1);

draw_set_blend_mode(bm_normal);
draw_set_color(c_white);

for (xx = 0; xx < w; xx++) {
    xtex1 = xtex * xx;
    xtex2 = xtex1 + xtex;
    _xx = h * xx;
    
    draw_primitive_begin_texture(pr_trianglestrip, argument3);
    
    for (yy = 0; yy < h; yy++) {
        i= _xx + yy;
        ytex1 = ytex * yy;
        draw_vertex_texture(argument1 + eg_dx[argument0, i], argument2 + eg_dy[argument0, i], xtex1, ytex1);
        draw_vertex_texture(argument1 + eg_dx[argument0, i + h], argument2 + eg_dy[argument0, i + h], xtex2, ytex1);
    }
    draw_primitive_end()
}
