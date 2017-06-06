function d = cofactor(a)

[n,z] = size(a);

if n == 1
    d = a;
else
    d = 0;
    for k = 1:n
        m = a;
        m(1,:) = [];
        m(:,k) = [];
        d = d+(-1)^(1+k)*a(1,k)*cofactor(m);
    end
end

end