/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
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