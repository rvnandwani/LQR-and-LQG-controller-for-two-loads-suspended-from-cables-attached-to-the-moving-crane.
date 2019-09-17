%% First Component: Part C

syms M m1 m2 l1 l2 F g

A = [0 1 0 0 0 0 ;
    0 0 ((-m1*g)/M) 0 (-m2*g)/M 0;
    0 0 0 1 0 0;
    0 0 ((-g*(m1+M))/(M*l1)) 0 (-g*(m2)/(M*l1)) 0;
    0 0 0 0 0 1;
    0 0 (-g*(m1))/(M*l2) 0 (-g*(m2+M)/(M*l2)) 0];

B = [0; 1/M; 0 ; 1/(M*l1); 0 ; 1/(M*l2)];
C = [1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];
D = [0; 0; 0];

CM = [B A*B A^2*B A^3*B A^4*B A^5*B]
R = rank(CM)

%The rank obtained for the given state space is 6, thus the system is
%controllable. The condition 'l1' not equal to 'l2' gives the condition of
%linearization for the system. 

%If l1 = l2, the two masses, m1 and m2 will collide with each other.
