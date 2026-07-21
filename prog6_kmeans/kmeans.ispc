
export uniform double dist_ispc(uniform const double x[], 
                                uniform const double y[], 
                                uniform int nDim) {
    double diff_sq_sum = 0.0;
    
    foreach (i = 0 ... nDim) {
        double diff = x[i] - y[i];
        diff_sq_sum += diff * diff;
    }
    
    uniform double accum = reduce_add(diff_sq_sum);
    
    return sqrt(accum);
}
