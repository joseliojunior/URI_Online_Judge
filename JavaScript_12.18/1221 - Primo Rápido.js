/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const r = l.shift();

const isPrime = n => {
    if (n === 1) return 'Not Prime';
    
    let i = 2;
    while (i * i <= n) {
        if (n % i === 0) return 'Not Prime';
        i++;
    }
    
    return 'Prime';
};

for (let i = 0; i < r; i++) {
    const x = +l.shift();
    console.log(isPrime(x));
}