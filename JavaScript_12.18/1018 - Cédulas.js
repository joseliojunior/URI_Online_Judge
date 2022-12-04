/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
    l = p.split('\n');

let v = +l[0];

const a = [v],
    n = [100, 50, 20, 10, 5, 2, 1];

for (let i = 0; i < n.length; i++) {
    a.push(`${parseInt(v / n[i])} nota(s) de R$ ${n[i]},00`);
    v %= n[i];
}

console.log(a.join('\n'));