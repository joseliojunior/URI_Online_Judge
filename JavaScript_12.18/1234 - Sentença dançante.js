/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
while (true) {
  let get = l.shift();
  if (!get) break;
  let k = true;
  get = get.split('')
    .map(e => {
      if (e.match(/\w/)) {
        if (k) {
          e = e.toUpperCase();
          k = false;
        } else {
          e = e.toLowerCase();
          k = true;
        }
      }
      return e;
    })
    .join('');
  console.log(get);
}