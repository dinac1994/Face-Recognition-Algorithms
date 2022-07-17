function result = eigenfaces(list, test_picture, k, tol)
    
    # Eigenfaces Algorithm for Face Recognition
    # Input: list (training dataset consisted of images)
    #	     test_picture
    #	     k (dimension of a truncated vector space in which we represent images)
    #	     tol (tolerance)

    training_base = zeros((size(list{1}, 1))*(size(list{1}, 2)), size(list, 2));
    m = size(list, 2);
    for i = 1:m
        training_base(:,i) = list{i}(:);
    endfor
    
    mean = sum(training_base, 2)/m;
    
    for i = 1:m
        training_base(:,i) -= mean;
    endfor
    
    [U,S,V] = svd(training_base);
    G = U(:,1:k)' * training_base;
    test_picture = test_picture(:);
    test_picture = test_picture - mean;
    c = U(:,1:k)' * test_picture;

    result = 0;

    for j = 1:m
        if (norm(c - G(:,j), 'fro')) < tol
            result = 1;
            break
        endif
    endfor
endfunction
