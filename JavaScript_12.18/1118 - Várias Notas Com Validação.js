/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const arr = [];
let status = true;

while (true) {
    const i = +l.shift();
    if (status) {
        i >= 0 && i <= 10 ? arr.push(i) 
            : console.log('nota invalida');
        if (arr.length === 2) {
            console.log(`media = ${(arr.reduce((a, b) => a + b) / 2).toFixed(2)}`);
            arr.length = 0;
            status = false;
        }
    } else {
        console.log('novo calculo (1-sim 2-nao)');
        if (i === 1) {
            status = true;
        } else if (i === 2) {
            break;
        };
    }
}
