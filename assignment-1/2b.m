function ConvertingPolygon(Px,Py,n)
c=1;
while(c<=n)
    [Px,Py]=graph(Px,Py,c);
    c=c+2;
end
end

function [Px,Py]=graph(Px,Py,c)
    [~,col_size]=size(Py);
        Qx=1:col_size;
        Qy=1:col_size;
        i=1;
        while(i<=col_size)
            if(i==col_size)
               Qx(i)=(Px(i)+Px(1))/2;
               Qy(i)=(Py(i)+Py(1))/2;
               break;
            end
            Qx(i)=(Px(i)+Px(i+1))/2;
            Qy(i)=(Py(i)+Py(i+1))/2;
            i=i+1;
        end
        figure(c);
        hold on
        plot(Px,Py,"blue");
        plot([Px(1),Px(col_size)],[Py(1),Py(col_size)],"blue")s
        hold off
        figure(c+1);
        hold on
        plot(Px,Py,"blue");
        plot([Px(1),Px(col_size)],[Py(1),Py(col_size)],"blue")
        plot(Qx,Qy,'*');
        plot([Qx(1),Qx(col_size)],[Qy(1),Qy(col_size)],'*');
        hold off
        Px=Qx;
        Py=Qy;
end
