/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
    l = p.split('\n');

let i = 0, arr = [];
while (i < 5) arr.push(l[i]), i++;

console.log([300, 1500, 600, 1000, 150]
    .map((x, y) => x * arr[y])
    .reduce((a, b) => a + b) + 225
);