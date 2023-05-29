function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
semilatus_rectum = semimajor_axis*(1-eccentricity^2);
mu = 398600;
velocityInPQW = (mu/semilatus_rectum)^(1/2) * (-sind(true_anomaly)*[1;0;0] + (eccentricity + cosd(true_anomaly))*[0;1;0]);
