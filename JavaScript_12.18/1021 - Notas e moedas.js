/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n');

let v = +l.shift();
const n = [100, 50, 20, 10, 5, 2];
const m = [1, .5, .25, .1, .05, .01];

console.log('NOTAS:');
n.forEach(e => {
    console.log(`${parseInt(v / e)} nota(s) de R$ ${e.toFixed(2)}`);
    v = +(v % e).toFixed(2);
});

console.log('MOEDAS:');
m.forEach(e => {
    console.log(`${parseInt(v / e)} moeda(s) de R$ ${e.toFixed(2)}`);
    v = +(v % e).toFixed(2);
});