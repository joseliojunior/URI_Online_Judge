/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
    l = p.split('\n');

for (let i = 0, x = l[0]; i < 10; i++) {
    console.log(`N[${i}] = ${x}`);
    x *= 2;
}