function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
semilatus_rectum = semimajor_axis*(1-eccentricity^2);
rangeInPQW = semilatus_rectum / (1+eccentricity*cosd(true_anomaly)) *(cosd(true_anomaly)*[1;0;0] + sind(true_anomaly)*[0;1;0]);

