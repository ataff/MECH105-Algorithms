% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
% Constants %
diameter_cyl = 25;
diameter_cone_top = 46;
height_cyl = 19;
height_cone = 14;
       % Request input for h %
       % h = input('Please insert height of water in meters: '); %

% Specify the height of the water
h = 20

% Assigning radius values %
r1 = (h - height_cyl);
r2 = (diameter_cyl/2) + r1 * (((diameter_cone_top/2)-(diameter_cyl/2))/height_cone);

% if else statement %
if h <= height_cyl;
    v = pi*(r2)^2*h;
else
     v = pi*(diameter_cyl/2)^2*height_cyl + pi*r1*((diameter_cyl/2)^2+(diameter_cyl/2)*r2+r2^2)/3;
end
fprintf('%5.1f\n', v)