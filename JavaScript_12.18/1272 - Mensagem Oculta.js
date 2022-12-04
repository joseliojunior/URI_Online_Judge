/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n'),
t = l[0];

for (let i = 1; i <= t; i++) {
    console.log(l[i]
        .replace(/\s+/g, ' ')
        .split(' ')
        .map(x => x[0])
        .join(''));
}