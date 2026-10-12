%[text] 1\. Measurements
r_sensor= 1.30;       % Sensor radius [cm]
h_sensor= 8.00;       % Sensor height in the container [cm]
rho_beaker= 2.23;     % Beaker (Borosilicate 3.3) density [g/cm^3]
m_beaker= 51.939;     % Empty beaker mass [g]
%[text] 2\. Volumes
V_container=2.000;                         % Biochamber 2000 volume [L]
V_solution=0.100;                          % K2CO3 Solution volume [L]
V_sensor=pi*r_sensor^(2)*h_sensor/1000;    % Displaced sensor volume [L]
V_beaker=(m_beaker/rho_beaker)/1000;       % Displaced glass volume [L]
%[text] 3\. Control Volume Calculation
V_gas=V_container-V_solution-V_beaker-V_sensor;
%[text] 4\. Output
fprintf('--- E-DAC Control Volume Analysis ---\n'); %[output:2dff2158]
fprintf('V_sensor:  %.3f L\n', V_sensor); %[output:6a87c94c]
fprintf('V_beaker:  %.3f L\n', V_beaker); %[output:3173281a]
fprintf('V_gas:     %.3f L\n', V_gas); %[output:209b7fec]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":26.2}
%---
%[output:2dff2158]
%   data: {"dataType":"text","outputData":{"text":"--- E-DAC Control Volume Analysis ---\n","truncated":false}}
%---
%[output:6a87c94c]
%   data: {"dataType":"text","outputData":{"text":"V_sensor:  0.042 L\n","truncated":false}}
%---
%[output:3173281a]
%   data: {"dataType":"text","outputData":{"text":"V_beaker:  0.023 L\n","truncated":false}}
%---
%[output:209b7fec]
%   data: {"dataType":"text","outputData":{"text":"V_gas:     1.834 L\n","truncated":false}}
%---
