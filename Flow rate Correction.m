%[text] Constants
F = 96485;      % Faraday's constant [C/mol]
R = 0.08206;    % Gas constant [L*atm/(mol*K)]
P = 1;          % Pressure [atm]
T = 298.15;     % Temperature [K]
%[text] Variables
z = 2;          % Electrons transferred per H2 molecule
I = 0.36;       % Applied current [A]
Q_H2 = 7.58;    % Actual H2 flow rate [mL/min]
%[text] Calculation
Q_min = (I*R*T*1000*60) / (P*z*F);
lambda=Q_H2/Q_min %[output:87dd5d72]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:87dd5d72]
%   data: {"dataType":"textualVariable","outputData":{"name":"lambda","value":"2.7678"}}
%---
