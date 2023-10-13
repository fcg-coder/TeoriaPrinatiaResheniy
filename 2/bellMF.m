function membership = bellMF(x, a, sigmaB)
    membership = 1./(1+(sigmaB^2)*(x-a).^2); 
end


