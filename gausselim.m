function d = gausselim(a)

n = length(a);    

for j = 1:n
    den = a(j,j);
    for i = j+1:n
        mult = a(i,j)/den;
        a(i,j+1:n) = a(i,j+1:n)-mult*a(j,j+1:n);
    end
end
d = zeros(1,n);
for j = 1:n
d(j) = a(j,j);  
end

d = prod(d);

end