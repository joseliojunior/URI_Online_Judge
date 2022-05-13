/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
Array.from(Array(+l.shift()), _ => {
  const y = Array.from(Array(+l.shift()), _ => l.shift());
  console.log(y.every(e => e === y[0]) ? y[0] : 'ingles' );
});