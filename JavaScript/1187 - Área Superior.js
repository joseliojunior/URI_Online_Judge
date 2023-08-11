/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n');

const op = l.shift();
let x = 1, y = 11;

const sum = Array.from(Array(5), () =>
    Array.from(Array(12), () => +l.shift()))
    .map(e => (e = e.slice(x, y), x++, y--, e)
    ).flat()
    .reduce((a, b) => a + b);

const total = op === 'M' ? sum / 30 : sum;

console.log(total.toFixed(1));