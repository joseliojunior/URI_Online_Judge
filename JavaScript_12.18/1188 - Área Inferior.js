/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const operator = l.shift();
let x = 5, y = 7;

const sum = Array.from(Array(12), () =>
    Array.from(Array(12), () => +l.shift()))
    .splice(7, 12)
    .map(e => (e = e.slice(x, y), x--, y++, e))
    .flat()
    .reduce((a, b) => a + b);

const total = operator === 'M' ? sum / 30 : sum;

console.log(total.toFixed(1));