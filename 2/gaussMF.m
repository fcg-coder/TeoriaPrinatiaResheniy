
function  membership = gaussMF(x, a, sigmaG)
    membership = exp(-((x-a)/sigmaG).^2);
end
