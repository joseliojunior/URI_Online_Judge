/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
Array.from(Array(+l.shift()), _ => {
  const s = l.shift().replace(/\r/g, '');
  if (s.length === 3) {
    if (s.match(/^tw./) || s.match(/^t.o/) || s.match(/^.wo/))
      console.log(2);
    else console.log(1);
  } else console.log(3);
});