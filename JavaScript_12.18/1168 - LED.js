/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8'),
l = p.split('\n'),
t = l[0];

for (let i = 1; i <= t; i++) {
    console.log(`${l[i]
        .split('')
        .map(x => x == 1 ? 2 
        : x == 2 || x == 3 ? 5
        : x == 0 || x == 9 ? 6
        : x == 7 ? 3
        : x == 8 ? 7 : x )
        .reduce((a, b) => +a + +b)} leds`);
}