function TF=TotalForce(PA,PB,Qb)
[~,cols] = size(PB);
F = zeros(2,cols);
    for i = 1:cols
        pb = PB(:,i);
        if(PA==pb)
            disp("The Code Should Not Work");
            break;
        end
        F(:,i) = (PA - pb)/(norm(PA-pb))^3;
    end
    TF = F*Qb;
end

function C=PossibleCharge(PA,PB,TF)
[~,cols] = size(PB);
F = zeros(2,cols);
    for i = 1:cols
        pb = PB(:,i);
        if(PA(1)==pb(1)||PA(2)==pb(2))
            disp("Points are Collinear, There might not be a solution");
        end
        F(:,i) = (PA - pb)/(norm(PA-pb))^3;
    end
    C = F\TF;
    if(F*C~=TF)
       disp("There might not be a solution");
       return;
    end
end

