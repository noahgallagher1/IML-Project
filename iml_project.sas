/* IML Project by Noah Gallagher */
/* IML = Interactive Matrix Language */
/*                       | 1 2 3 |  */
/* Consider the matrix A=| 4 5 6 |. */
/*                       | 7 8 1 |  */

proc iml;
A={1 2 3, 4 5 6, 7 8 1};

/*(a) Compute the determinant of A.*/
d=det(A);
print(d);

/*(b) Compute the inverse of A.*/
A_inv=inv(A);
print(A_inv);

/*(c) Compute the transposed matrix A'*/
A_tr=t(A);
print(A_tr);

/*(d) Consider vector v=[1 -1 2] and let B be a 3x3 unity matrix. Compute
v(A+B)^{-1}A'Bv'.*/
B={1 1 1, 1 1 1, 1 1 1};
v={1 -1 2};
Result=v*inv(A+B)*t(A)*B*t(v);
print Result;

/*(e) Increasing all entries in matrix A by 2 */
A_new=2*A;
print A_new;
