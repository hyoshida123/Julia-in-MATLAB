% Hideaki Yoshida
maxstep=30; m=400; % steps per level of plot, m = size of plot grid
cx=0; cy=0; %center of a rectangle
wid=1.5; % width of sides of rectangle

% create evenly spaced x & y vectors for plot
x=linspace(cx-wid,cx+wid,m);
y=linspace(cy-wid,cy+wid,m);

% create meshgrid from x & y vectors
[X,Y]=meshgrid(x,y);

% example values that give interesting plots
c1=-.75; c2= .375+.333*1i; c3= -.117-.856*1i;

% set constant for calculating the julia set
c= -.117-.856*1i; % try other values from above for different results

% calculate Z & W values which will be colors
Z=X+1i*Y;
for k=1:maxstep;
  Z=Z.^2+c;
  W=exp(-abs(Z));
end

% change colormap for different results
colormap prism(256)

% set pseudo-colors with flat shading
pcolor(W);
shading flat;

