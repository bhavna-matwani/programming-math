[~,cols] = size(PB);
[~,n] = size(PA);
TF = zeros(2,n);
for i = 1:n
    TF(:,i)=TotalForce(PA(:,i),PB,Qb);
end

C = FindCharges(PA,PB,TF)

function F=ForceMatrix(PA,PB)
[~,cols] = size(PB);
F = zeros(2,cols);
    for i = 1:cols
        pb = PB(:,i);
        F(:,i) = (PA - pb)/(norm(PA-pb))^3;
    end
end

%from 2b
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

function C=FindCharges(PA,PB,TF)
A = ForceMatrix(PA(:,1),PB);
B = TF(:,1);
[~,n] = size(PA);
for i = 2:n
    F=ForceMatrix(PA(:,i),PB);
    A = [A;F];
    B = [B;TF(:,i)];
end
    C = A\B;
end
