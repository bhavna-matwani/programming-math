function [Qx,Qy]=ConnectMidPoints(P) %assuming the polygon matrix contaiins Px and Py row wise i.e. for the given example [0, 2, 4, -2, 6;0, 8, 0, 6, 6]
    n = length(P);
    Qx = zeros(1,n);
    Qy = zeros(1,n);
    for c = 1:n-1
        Qx(1,c) = (P(1,c) + P(1,c+1))/2;
        Qy(1,c) = (P(2,c) + P(2,c+1))/2;
    end
    Qx(1,n) = (P(1,n) + P(1,1))/2;
    Qy(1,n) = (P(2,n) + P(2,1))/2;
end
