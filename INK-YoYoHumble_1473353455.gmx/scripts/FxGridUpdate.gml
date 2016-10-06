/// FxGridUpdate(index, slowdown);

// Slowdown should be larger than 1: A slowdown of 1 means no friction, 
// a slowdown of 2 means halving the speed for each step

a0        = argument0;
argument1 = 1 / max(argument1, 1);

for (i = 0; i <eg_dots[a0]; i++) {
    if (eg_vx[a0, i] != 0 || eg_vy[a0, i] != 0) {
        eg_dx[a0, i] += eg_vx[a0, i];
        eg_dy[a0, i] += eg_vy[a0, i];
        eg_vx[a0, i]  = (eg_vx[a0, i] + (eg_dsx[a0, i] - eg_dx[a0, i]) * 0.1) * argument1;
        eg_vy[a0, i]  = (eg_vy[a0, i] + (eg_dsy[a0, i] - eg_dy[a0, i]) * 0.1) * argument1;
    }
}
