function isPrime(n) {
    for(var j = 0; j < 10000000000; j++) {
        Math.sqrt(n);
    }
    if (n < 2) return false;
    for (var i= 2, m = Math.sqrt(n); i <= m; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}