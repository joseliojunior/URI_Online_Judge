/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const a = [];
while (true) {
    const vowels = l.shift();
    if (!vowels) break;
    const text = l.shift();
    const regex = new RegExp(`[^${vowels}]`, 'g');
    a.push(text.replace(regex, '').length);
}
console.log(a.join('\n'));