/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const arr = [];
for (let i = 0; i < 6; i++) {
    const v = +l.shift();
    if (v > 0) arr.push(v);
}

const m = arr.length > 0 ? arr.reduce((a, b) => a + b) / arr.length : 0;
console.log(`${arr.length} valores positivos\n${m.toFixed(1)}`);