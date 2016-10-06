/// FxGridCreate(vtiles, htiles, width, height);

// h/vtiles: How many tiles should be in the grid
// width/height: The size of the grid.

globalvar eg_ind, eg_dots, eg_w, eg_h, eg_tw, eg_th, eg_dsx, eg_dsy, eg_dx, eg_dy;

eg_ind = 0;

eg_dots[eg_ind] = 0;
eg_w[eg_ind]    = floor(argument0 * 0.5) * 2;
eg_h[eg_ind]    = floor(argument1 * 0.5) * 2; 
eg_tw[eg_ind]   = argument2 / eg_w[eg_ind];
eg_th[eg_ind]   = argument3 / eg_h[eg_ind];

var xx, yy;
for (xx = 0; xx < eg_w[eg_ind]; xx++) {
    for (yy = 0; yy < eg_h[eg_ind]; yy++) {
        eg_dsx[eg_ind, eg_dots[eg_ind]] = xx * (argument2 / (eg_w[eg_ind] - 1));
        eg_dsy[eg_ind, eg_dots[eg_ind]] = yy * (argument3 / (eg_h[eg_ind] - 1));
        eg_dx[eg_ind, eg_dots[eg_ind]]  = eg_dsx[eg_ind, eg_dots[eg_ind]];
        eg_dy[eg_ind, eg_dots[eg_ind]]  = eg_dsy[eg_ind, eg_dots[eg_ind]];
        eg_vx[eg_ind, eg_dots[eg_ind]]  = 0;
        eg_vy[eg_ind, eg_dots[eg_ind]]  = 0;
        eg_dots[eg_ind]++;
    }
}

return eg_ind;

// Does this work..?
eg_ind++;
