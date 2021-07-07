/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
 * @submission #23513205
 */
const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n'),
op = l.shift(),
na = [];
let ay = [], x = 1, y = 11;

for (let i = 0; i <= 4; i++) {
    for(let j = 0; j < 12; j++) {
        ay.push(+(l.shift()));
    }
    na.push(ay.splice(0, 12).slice(x, y));
    x++; y--;
}

ay = na.flat();
const v = ay.reduce((a, b) => a + b);

op === 'M' ? console.log((v / ay.length).toFixed(1))
: console.log(v.toFixed(1));