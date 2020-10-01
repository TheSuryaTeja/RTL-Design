module comp (
input [3:0]a,b,
output less,greater,equal
	);

wire x3,x2,x1,x0;

xnor (x3,a[3],b[3]);
xnor (x2,a[2],b[2]);
xnor (x1,a[1],b[1]);
xnor (x0,a[0],b[0]);
and (equal, x3,x2,x1,x0);

assign greater = a[3]&!b[3] | x3&a[2]&!b[2] | x3&x2&a[1]&!b[1] | x3&x0&x1&a[0]&!b[0];

assign less = !a[3]&b[3] | x3&!a[2]&b[2] | x3&x2&!a[1]&b[1] | x3&x2&x1&!a[0]&b[0];


endmodule