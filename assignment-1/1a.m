function [L] = EulerSieve1(N)
L=2:N;
P=2;
i=1;
while (P^2)<=N
    %L1=L;
    if L(i)>=P && L(i)<=N/P
        L1(i)=L(i);
        i=i+1;
    end
    L2=P*L1;
    L=setdiff(L,L2);
    P=P+1;
end
disp(L);
disp("L1");
disp(L1);
disp("L2");
disp(L2);
end

  
