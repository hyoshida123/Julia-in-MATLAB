function W = juliaF(c, maxstep, m, wid)
%juliaF.m Generate a Julia Set plot.
%   c = constant that gives an interesting shape of fractal.
%   maxstep = steps per level of plot.
%   m = size of plot grid.
%   wid = width of sides of rectangle.
    cx=0; cy=0;
    x=linspace(cx-wid,cx+wid,m);
    y=linspace(cy-wid,cy+wid,m);
    [X,Y]=meshgrid(x,y);
    Z=X+1i*Y;
    for k=1:maxstep
        Z=Z.^2+c;
        W=exp(-abs(Z));
    end
    colormap prism(256)
    pcolor(W);
    shading flat;
    txt=strcat('c=', num2str(c));
    xlabel(txt);
end

