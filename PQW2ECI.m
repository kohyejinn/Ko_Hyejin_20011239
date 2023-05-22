function rotation = PQW2ECI(arg_prg, inc_angle, RAAN)
r_arg_prg=[cosd(arg_prg) sind(arg_prg) 0; -sind(arg_prg) cosd(arg_prg) 0; 0 0 1];
r_inc_angle=[1 0 0; 0 cosd(inc_angle) sind(inc_angle); 0 -sind(inc_angle) cosd(inc_angle)];
r_RAAN=[cosd(RAAN) sind(RAAN) 0; -sind(RAAN) cosd(RAAN) 0; 0 0 1];
rECI2PQW=r_arg_prg * r_inc_angle * r_RAAN;
rotation = transpose(rECI2PQW)