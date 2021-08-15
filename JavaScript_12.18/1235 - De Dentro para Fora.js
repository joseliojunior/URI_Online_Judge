/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n'),
t = l[0];

for (let i = 1; i <= t; i++) {
    const f = l[i],
    fn = (x, y) => f.split('')
        .slice(x, y)
        .reverse()
        .join('');
    console.log(`${fn(0, f.length / 2)}${fn(f.length / 2, f.length)}`);
}