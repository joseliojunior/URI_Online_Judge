/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n');

const f = [0, 1];

Array.from(Array(+l.shift()), () =>
    f.push(f[f.length - 2] + f[f.length - 1])
);
f.splice(f.length - 2);
console.log(f.join(' '));