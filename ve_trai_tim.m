% NGUYEN CONG VINH 20146183
syms t t1 t2 l1 l2 X Y
l1 = 50
l2 = 50

for t = -pi: 0.02 : pi
    
    X  = 16*(sin(t))^3; 
    Y  = 13*cos(t)- 5*cos(2*t)- 2*cos(3*t)- cos(4*t);
    c2 = (X^2 + Y^2 -l1^2 -l2^2)/ (2*l1*l2);
    s2 = sqrt(abs(1-c2^2));
    
    t2 = atan2(s2,c2);
    c1 = (l1 + l2*c2)*X + l2*s2*Y;
    s1 = (l1 + l2*c2)*Y - l2*s2*X;
    t1 = atan2(s1,c1);
   
    Px = l1*cos(t1) + l2*cos(t1+t2)
    Py = l1*sin(t1) + l2*sin(t1+t2)
    subplot(2,2,1) 
    plot(t, t1*(180/pi), '-o')
    pause(0.001)
    xlabel('TIME')
    ylabel('THETA1')
    hold on
    subplot(2,2,2) 
    plot(t, t2*(180/pi), '-o')
    pause(0.001)
    xlabel('TIME')
    ylabel('THETA2')
    hold on
    subplot(2,2,3)
    plot(Px,Py, '-*')
    pause(0.001)
    xlabel('x(cm)')
    ylabel('y(cm)')
    hold on
end