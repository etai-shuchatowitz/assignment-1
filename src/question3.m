% draw the struts for question1

% First possible
u1 = 1;
u2 = 2;
u3 = 2;
v1 = 2;
v2 = 1;
v3 = 3;
x1 = 4
x2 = 0;
y2 = 4;

plot([u1 u2 u3 u1], [v1 v2 v3 v1], 'r'); hold on
plot([0 x1 x2], [0 0 y2], 'bo');
plot([0 u1], [0 v1], 'b');
plot([x2 u3], [y2 v3], 'b');
plot([x1 u2], [0 v2], 'b')

waitforbuttonpress;
hold off;


% second possible
u1 = 2;
u2 = 3;
u3 = 1;
v1 = 1;
v2 = 2;
v3 = 2;
x1 = 4
x2 = 0;
y2 = 4;

plot([u1 u2 u3 u1], [v1 v2 v3 v1], 'r'); hold on
plot([0 x1 x2], [0 0 y2], 'bo');
plot([0 u1], [0 v1], 'b');
plot([x2 u3], [y2 v3], 'b');
plot([x1 u2], [0 v2], 'b');