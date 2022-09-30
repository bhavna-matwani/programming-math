function [L] = EulerSieve2(N)
L=ones(1,N);
L(1)=0;
P=2;
i=1;
while (P^2)<=N
    L1=zeros(1,N);
    L2=zeros(1,N);
    for i = 1:N
       if(L(i)==true && i>=P && i<=N/P)
        L1(i)=true;
       end
    end
    for i = 1:N
        if(L1(i)==true && P*i<=N)
            L2(P*i)=true;
        end
    end
    for i=1:N
        if(L2(i)==true)
            L(i)=false;
        end
    end
    for i=P+1:Ns
        if(L(i)==1)
            P=i;
            break
        end
    end
disp(L);
disp("L1");
disp(L1);
disp("L2");
disp(L2);
end
