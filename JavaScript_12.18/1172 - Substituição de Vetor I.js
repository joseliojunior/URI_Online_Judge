/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
    l = p.split('\n');

for (let i = 0; i < 10; i++) {
    const v = +l[i];
    console.log(`X[${i}] = ${v <= 0 ? 1 : v}`);
}