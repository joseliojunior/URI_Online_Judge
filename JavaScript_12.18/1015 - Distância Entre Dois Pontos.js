/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n');

const a = Array.from(Array(2), () => l.shift().split(' ')).flat().map(e => +e);
console.log(Math.sqrt(((a[2] - a[0]) ** 2) + ((a[3] - a[1]) ** 2)).toFixed(4));