cube = { [0,0,0,0; 0,0,1,1; 0,1,1,0],  [1,1,1,1; 0,1,1,0; 0,0,1,1], ...
         [0,1,1,0; 0,0,0,0; 0,0,1,1],  [0,0,1,1; 1,1,1,1; 0,1,1,0], ...
         [0,0,1,1; 0,1,1,0; 0,0,0,0],  [0,1,1,0; 0,0,1,1; 1,1,1,1] };

% 3*5*8 box
box  = { [0,0,0,0; 0,0,5,5; 0,3,3,0],  [8,8,8,8; 0,5,5,0; 0,0,3,3], ...
         [0,8,8,0; 0,0,0,0; 0,0,3,3],  [0,0,8,8; 5,5,5,5; 0,3,3,0], ...
         [0,0,8,8; 0,5,5,0; 0,0,0,0],  [0,8,8,0; 0,0,5,5; 3,3,3,3]};

octahedron = { [1,0,0; 0,1,0; 0,0,1], [0,1,0; -1,0,0; 0,0,1], ...
               [-1,0,0; 0,-1,0; 0,0,1], [0,-1,0; 1,0,0; 0,0,1], ...
               [0,1,0; 1,0,0; 0,0,-1], [1,0,0; 0,-1,0; 0,0,-1], ...
               [0,-1,0; -1,0,0; 0,0,-1], [-1,0,0; 0,1,0; 0,0,-1] };

% pyramid with square base (top half of octahedron) 
pyramid = { [1,0,0; 0,1,0; 0,0,1], [0,1,0; -1,0,0; 0,0,1], ...
            [-1,0,0; 0,-1,0; 0,0,1], [0,-1,0; 1,0,0; 0,0,1], ...
            [1,0,-1,0; 0,-1,0,1; 0,0,0,0]};

% frustum (bottom half of pyramid expanded by 2)
frustum = { [2,0,0,1; 0,2,1,0; 0,0,1,1], [0,-2,-1,0; 2,0,0,1; 0,0,1,1], ...
            [-2,0,0,-1; 0,-2,-1,0; 0,0,1,1], [0,2,1,0; -2,0,0,-1; 0,0,1,1] ...
            [2,0,-2,0; 0,-2,-0,2; 0,0,0,0], [1,0,-1,0; 0,1,0,-1; 1,1,1,1]};

DrawRotatedPolyhedron(EulerRotation(pi/4, pi/4, 0), cube)
DrawRotatedPolyhedron(EulerRotation(pi/4, pi/6, pi/4), cube)
DrawRotatedPolyhedron(EulerRotation(pi/4, pi/4, 0), box)
DrawRotatedPolyhedron(EulerRotation(0, pi/6, 0), octahedron)
DrawRotatedPolyhedron(EulerRotation(0, 0, 0), octahedron)
DrawRotatedPolyhedron(EulerRotation(0, pi, 0), frustum)
DrawRotatedPolyhedron(EulerRotation(0, pi/3, 0), pyramid)



function R = EulerRotation(A,B,C)
RA = [ cos(A), -sin(A), 0 ; sin(A), cos(A), 0; 0, 0, 1];
RB = [ 1, 0, 0; 0, cos(B), sin(B); 0, -sin(B), cos(B)];
RC = [ cos(C), -sin(C), 0 ; sin(C), cos(C), 0; 0, 0, 1];
R = RC * RB * RA;
end 

function DrawRotatedPolyhedron(M,P)
cube = { [0,0,0,0; 0,0,1,1; 0,1,1,0],  [1,1,1,1; 0,1,1,0; 0,0,1,1], ...
         [0,1,1,0; 0,0,0,0; 0,0,1,1],  [0,0,1,1; 1,1,1,1; 0,1,1,0], ...
         [0,0,1,1; 0,1,1,0; 0,0,0,0],  [0,1,1,0; 0,0,1,1; 1,1,1,1] };

% 3*5*8 box
box  = { [0,0,0,0; 0,0,5,5; 0,3,3,0],  [8,8,8,8; 0,5,5,0; 0,0,3,3], ...
         [0,8,8,0; 0,0,0,0; 0,0,3,3],  [0,0,8,8; 5,5,5,5; 0,3,3,0], ...
         [0,0,8,8; 0,5,5,0; 0,0,0,0],  [0,8,8,0; 0,0,5,5; 3,3,3,3]};

octahedron = { [1,0,0; 0,1,0; 0,0,1], [0,1,0; -1,0,0; 0,0,1], ...
               [-1,0,0; 0,-1,0; 0,0,1], [0,-1,0; 1,0,0; 0,0,1], ...
               [0,1,0; 1,0,0; 0,0,-1], [1,0,0; 0,-1,0; 0,0,-1], ...
               [0,-1,0; -1,0,0; 0,0,-1], [-1,0,0; 0,1,0; 0,0,-1] };

% pyramid with square base (top half of octahedron) 
pyramid = { [1,0,0; 0,1,0; 0,0,1], [0,1,0; -1,0,0; 0,0,1], ...
            [-1,0,0; 0,-1,0; 0,0,1], [0,-1,0; 1,0,0; 0,0,1], ...
            [1,0,-1,0; 0,-1,0,1; 0,0,0,0]};

% frustum (bottom half of pyramid expanded by 2)

frustum = { [2,0,0,1; 0,2,1,0; 0,0,1,1], [0,-2,-1,0; 2,0,0,1; 0,0,1,1], ...
            [-2,0,0,-1; 0,-2,-1,0; 0,0,1,1], [0,2,1,0; -2,0,0,-1; 0,0,1,1] ...
            [2,0,-2,0; 0,-2,-0,2; 0,0,0,0], [1,0,-1,0; 0,1,0,-1; 1,1,1,1]};

s = size(P,1)-1;
e = size(P,2)-1;
mat = M*cell2mat(P);

% cube and box and frustum
if (isequal(P,cube) || isequal(P,box) || isequal(P,frustum))
    i=0;
    for k=s:e
    a1 = mat(:,k*4+3)-mat(:,k*4+2);
    a2 = mat(:,4*k+1)-mat(:,k*4+2);
    a = cross(a1,a2);
    if(a(3,1)<0) 
        edge1 = (mat(1:3,k*4+1) - mat(1:3,k*4+2));
        edge1 = edge1.';
        edge2 = (mat(1:3,k*4+2) - mat(1:3,k*4+3));
        edge2 = edge2.';
        edge3 = (mat(1:3,k*4+3) - mat(1:3,k*4+4));
        edge3 = edge3.';
        edge4 = (mat(1:3,k*4+4) - mat(1:3,k*4+1));
        edge4 = edge4.';

        X(1,1) = mat(1,k*4+1);
        X(1,2) = mat(1,k*4+2);
        X(1,3) = mat(1,k*4+3);        
        X(1,4) = mat(1,k*4+4);
        X(1,5) = mat(1,k*4+1);
 
        Y(1,1) = mat(2,k*4+1);
        Y(1,2) = mat(2,k*4+2);
        Y(1,3) = mat(2,k*4+3);
        Y(1,4) = mat(2,k*4+4);
        Y(1,5) = mat(2,k*4+1);

        %d
        cx =  (X(1,1) + X(1,2) + X(1,3) + X(1,4))/4;
        cy =  (Y(1,1) + Y(1,2) + Y(1,3) + Y(1,4))/4;
        cz =  (mat(3,k*4+1) + mat(3,k*4+2) + mat(3,k*4+3) + mat(3,k*4+4))/4;
        center = [cx cy cz];
    
        %e
        edges(1) = norm(cross(edge1,center-mat(1:3,k*4+2).'))/norm(edge1);
        edges(2) = norm(cross(edge2,center-mat(1:3,k*4+3).'))/norm(edge2);
        edges(3) = norm(cross(edge3,center-mat(1:3,k*4+4).'))/norm(edge3);
        edges(4) = norm(cross(edge4,center-mat(1:3,k*4+1).'))/norm(edge4);
        radius = min(edges)/2;
    
        %f
        ucap = edge1/norm(edge1);
        Q = dot((mat(1:3,k*4+3) - mat(1:3,k*4+1)).',ucap)*ucap + mat(1:3,k*4+1).';
        v = mat(1:3,k*4+3).' - Q;
        vcap = v/norm(v);
        
        %g 
        for p=1:50
        circle_points(:,p) = center + radius*cos(2*pi*p/50)*ucap + radius*sin(2*pi*p/50)*vcap;
        end
        circle_points(:,p+1) = center + radius*cos(2*pi/50)*ucap + radius*sin(2*pi/50)*vcap;
        i = i + 1;
        plot(X,Y)
        hold on
        plot(circle_points(1,:),circle_points(2,:))
        hold on
    end
    end
hold off
end

% octahedron
if (isequal(P,octahedron))
    i=0;
    for k=s:e
    a1 = mat(:,k*3+3)-mat(:,k*3+2);
    a2 = mat(:,3*k+1)-mat(:,k*3+2);
    a = cross(a1,a2);
    if(a(3,1)<0) 
        edge1 = (mat(1:3,k*3+1) - mat(1:3,k*3+2));
        edge1 = edge1.';
        edge2 = (mat(1:3,k*3+2) - mat(1:3,k*3+3));
        edge2 = edge2.';
        edge3 = (mat(1:3,k*3+3) - mat(1:3,k*3+1));
        edge3 = edge3.';

        X(1,1) = mat(1,k*3+1);
        X(1,2) = mat(1,k*3+2);
        X(1,3) = mat(1,k*3+3);
        X(1,4) = mat(1,k*3+1);
        
        Y(1,1) = mat(2,k*3+1);
        Y(1,2) = mat(2,k*3+2);
        Y(1,3) = mat(2,k*3+3);
        Y(1,4) = mat(2,k*3+1);
       
        cx =  (X(1,1) + X(1,2) + X(1,3))/3;
        cy =  (Y(1,1) + Y(1,2) + Y(1,3))/3;
        cz =  (mat(3,k*3+1) + mat(3,k*3+2) + mat(3,k*3+3))/3;
        center = [cx cy cz];
    
        %e
        edges(1) = norm(cross(edge1,center-mat(1:3,k*3+1).'))/norm(edge1);
        edges(2) = norm(cross(edge2,center-mat(1:3,k*3+2).'))/norm(edge2);
        edges(3) = norm(cross(edge3,center-mat(1:3,k*3+3).'))/norm(edge3);
        radius = min(edges)/2;
    
        %f
        ucap = edge1/norm(edge1);
        Q = dot((mat(1:3,k*3+3) - mat(1:3,k*3+1)).',ucap)*ucap + mat(1:3,k*3+1).';
        v = mat(1:3,k*3+3).' - Q;
        vcap = v/norm(v);
        
        %g 
        for p=1:50
        circle_points(:,p) = center + radius*cos(2*pi*p/50)*ucap + radius*sin(2*pi*p/50)*vcap;
        end
        circle_points(:,p+1) = center + radius*cos(2*pi/50)*ucap + radius*sin(2*pi/50)*vcap;
        i = i + 1;
        plot(X,Y)
        hold on
        plot(circle_points(1,:),circle_points(2,:))
        hold on
    end
    end
hold off
end

%pyramid
if (isequal(P,pyramid))
    i=0;
    for k=s:e
        a1 = mat(:,k*3+3)-mat(:,k*3+2);
        a2 = mat(:,3*k+1)-mat(:,k*3+2);
        a = cross(a1,a2);
        if(a(3,1)<0 && k<e) 
            edge1 = (mat(1:3,k*3+1) - mat(1:3,k*3+2));
            edge1 = edge1.';
            edge2 = (mat(1:3,k*3+2) - mat(1:3,k*3+3));
            edge2 = edge2.';
            edge3 = (mat(1:3,k*3+3) - mat(1:3,k*3+1));
            edge3 = edge3.';

            X(1,1) = mat(1,k*3+1);
            X(1,2) = mat(1,k*3+2);
            X(1,3) = mat(1,k*3+3);
            X(1,4) = mat(1,k*3+1);
            
            Y(1,1) = mat(2,k*3+1);
            Y(1,2) = mat(2,k*3+2);
            Y(1,3) = mat(2,k*3+3);
            Y(1,4) = mat(2,k*3+1);

            cx =  (X(1,1) + X(1,2) + X(1,3))/3;
            cy =  (Y(1,1) + Y(1,2) + Y(1,3))/3;
            cz =  (mat(3,k*3+1) + mat(3,k*3+2) + mat(3,k*3+3))/3;
            center = [cx cy cz];
    
        %e
            edges(1) = norm(cross(edge1,center-mat(1:3,k*3+1).'))/norm(edge1);
            edges(2) = norm(cross(edge2,center-mat(1:3,k*3+2).'))/norm(edge2);
            edges(3) = norm(cross(edge3,center-mat(1:3,k*3+3).'))/norm(edge3);
            radius = min(edges)/2;
    
        %f
        ucap = edge1/norm(edge1);
        Q = dot((mat(1:3,k*3+3) - mat(1:3,k*3+1)).',ucap)*ucap + mat(1:3,k*3+1).';
        v = mat(1:3,k*3+3).' - Q;
        vcap = v/norm(v);
        
        %g 
        for p=1:50
        circle_points(:,p) = center + radius*cos(2*pi*p/50)*ucap + radius*sin(2*pi*p/50)*vcap;
        end
        circle_points(:,p+1) = center + radius*cos(2*pi/50)*ucap + radius*sin(2*pi/50)*vcap;
        i = i + 1;
        plot(X,Y)
        hold on
        plot(circle_points(1,:),circle_points(2,:))
        hold on

        elseif(a(3,1)<0 && k==e)
            edge4 = (mat(1:3,k*3+4) - mat(1:3,k*3+1));
            edge4 = edge4.';
            X(1,1) = mat(1,k*3+1);
            X(1,2) = mat(1,k*3+2);
            X(1,3) = mat(1,k*3+3);
            x = mat(1,k*3+4);
           
            Y(1,1) = mat(2,k*3+1);
            Y(1,2) = mat(2,k*3+2);
            Y(1,3) = mat(2,k*3+3);
            y = mat(2,k*3+4);

            cx =  (X(1,1) + X(1,2) + X(1,3)+x)/4;
            cy =  (Y(1,1) + Y(1,2) + Y(1,3)+y)/3;
            cz =  (mat(3,k*3+1) + mat(3,k*3+2) + mat(3,k*3+3)+mat(3,k*3+4))/3;
            center = [cx cy cz];
            edges(1) = norm(cross(edge1,center-mat(1:3,k*3+1).'))/norm(edge1);
            edges(2) = norm(cross(edge2,center-mat(1:3,k*3+2).'))/norm(edge2);
            edges(3) = norm(cross(edge3,center-mat(1:3,k*3+3).'))/norm(edge3);
            edges(4) = norm(cross(edge4,center-mat(1:3,k*3+4).'))/norm(edge4);
            radius = min(edges)/2;
            ucap = edge1/norm(edge1);
            Q = dot((mat(1:3,k*3+3) - mat(1:3,k*3+1)).',ucap)*ucap + mat(1:3,k*3+1).';
            v = mat(1:3,k*3+3).' - Q;
            vcap = v/norm(v);
        
        %g 
        for p=1:50
        circle_points(:,p) = center + radius*cos(2*pi*p/50)*ucap + radius*sin(2*pi*p/50)*vcap;
        end
        circle_points(:,p+1) = center + radius*cos(2*pi/50)*ucap + radius*sin(2*pi/50)*vcap;
        i = i + 1;
        plot(X,Y)
        hold on
        plot(circle_points(1,:),circle_points(2,:))
        hold on
        end
    end
hold off
end
end
