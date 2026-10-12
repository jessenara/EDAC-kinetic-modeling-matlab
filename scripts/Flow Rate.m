%[text] 1\. Constants
F = 96485;      % Faraday's constant [A*s/mol]
R = 0.08206;    % Gas constant [L*atm/(mol*K)]
P = 1;          % Pressure [atm]
T = 298.15;     % Temperature [K]
%[text] 2\. Variables
z = 2;             % Electrons transferred per H2 molecule
I = 0.360;         % Applied current [A]

Q_air = 2.00;      % Apparent flow rate by air rotameter [mL/min]
rho_air = 1.184;   % Density of air at 298.15 K, 1 atm [kg/m^3]
rho_H2 = 0.082;    % Density of H2 at 298.15 K, 1 atm [kg/m^3]
%[text] 3\. Flow Rate Calculation
Q_H2 = Q_air*sqrt(rho_air/rho_H2);  % Actual H2 flow rate [mL/min]
Q_min = (I*R*T*1000*60) / (P*z*F);  % theoretical minimum H2 flow rate [mL/min]
lambda=Q_H2/Q_min;                  % Anodic stoichiometric ratio
%[text] 4\. Output
fprintf('--- E-DAC Hydrogen Flow rate ---\n'); %[output:806d9220]
fprintf('Q_H2:  %.2f mL/min\n', Q_H2); %[output:6da14097]
fprintf('Q_min:  %.2f mL/min\n', Q_min); %[output:58f48dd6]
fprintf('lambda:  %.2f\n', lambda); %[output:133b26ec]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:806d9220]
%   data: {"dataType":"text","outputData":{"text":"--- E-DAC Hydrogen Flow rate ---\n","truncated":false}}
%---
%[output:6da14097]
%   data: {"dataType":"text","outputData":{"text":"Q_H2:  7.60 mL\/min\n","truncated":false}}
%---
%[output:58f48dd6]
%   data: {"dataType":"text","outputData":{"text":"Q_min:  2.74 mL\/min\n","truncated":false}}
%---
%[output:133b26ec]
%   data: {"dataType":"text","outputData":{"text":"lambda:  2.78\n","truncated":false}}
%---
