% 
% Description
% -----------
% Function evaluateStruts in a single unknown theta given in the book [Sauer], p. 68.
% The roots f(theta)=0 of this auxiliary function are solutions to the direct 
% kinematics problem of the planar Stewart platform. 
%
% The parameters L_1 , L_2 , L_3 , gamma , x_1 , x_2 , y_2 are fixed
% constants, and the strut lengths p_1 , p_2 , p_3 will be known for a given 
% pose.


%
% \param[in] theta 
%    Argument at which f(theta) is to be evaluated (the angle between the 
%    platform and the x-axis).

% Inputs: theta (the angle between the platform and the x-axis)

function  out = question1(theta)

p1 = sqrt(5);     % length of the three fixed struts
p2 = sqrt(5);    
p3 = sqrt(5);

L1 = 2;           % the length of side one of the platform connecting struts 2 and 3 
L2 = sqrt(2);     % the length of the side of the platform connecting struts 1 and 3
L3 = sqrt(2);     % the length of the side of the platform connecting struts 1 and 2 

gamma = pi/2;     % the angle between sides L2 and L3 

                  % the strut p1 is assumed to be at coordinates (0, 0)

x1 = 4;           % the x coordinate where p2 connects to the x axis
                  % p2 is assumed to be anchored to the x axis
x2 = 0;           % the x coordinate of p3's anchor  
y2 = 4;           % the y coordinate of p3's anchor  
                                                                                                                                                                                                                                                                                                                  
A2 = L3.*cos(theta)-x1;
B2 = L3.*sin(theta);
A3 = L2.*cos(theta+gamma) - x2;
B3 = L2.*sin(theta+gamma) - y2;


N1 = B3.*(p2.^2 - p1.^2 - A2.^2 - B2.^2) - B2.*(p3.^2-p1.^2-A3.^2-B3.^2);

N2 = -1.*A3.*(p2.^2 - p1.^2 - A2.^2 - B2.^2) + A2.*(p3.^2-p1.^2-A3.^2-B3.^2);

D = 2.*((A2.*B3)-(B2.*A3));

out = (N1.^2+N2.^2-p1.^2.*D.^2)
end