syms M m1 m2 theta1 theta1dot l1 xdot x theta2 l2 theta2dot g theta1ddot xddot

L = 0.5*M*xdot^2 + ((0.5*m1)*((xdot-l1*theta1dot*cos(theta1))^2 + (l1*theta1dot*sin(theta1))^2) + ((0.5*m2)*((xdot-l2*theta2dot*cos(theta2))^2 + (l2*theta2dot*sin(theta2))^2) - m1*g*l1*(1-cos(theta1)) -m2*g*l2*(1-cos(theta2))))


A = diff(L, xdot)
B = diff(L, x)
C = diff(L, theta1dot)
D = diff(L, theta2dot)
E = diff(L, theta1)
F = diff(L, theta2)

t1= l1^2*m1*(theta1dot^2*(2*cos(theta1)*sin(theta1))+theta1ddot*sin(theta1)^2) - l1*m1*(cos(theta1)*(xddot-l1*(theta1dot^2*(-sin(theta1))+(theta1ddot)*cos(theta1)))+ (xdot - l1*theta1dot*cos(theta1))*(theta1dot)*(-sin(theta1)) )
L2 = t1 - simplify(E)
simplify(L2)
