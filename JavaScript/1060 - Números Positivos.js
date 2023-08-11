/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

console.log(`${l.filter(e => +e > 0).length} valores positivos`);