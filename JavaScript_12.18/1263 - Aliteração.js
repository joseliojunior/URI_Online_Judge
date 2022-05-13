/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
while (true) {
  let get = l.shift();
  if (!get) break;
  get = get.replace(/[ ]+/g, ' ').split(' ').map(e => e[0].toLowerCase());
  const w = get.join('');
  get = [...new Set(get)]
    .map(e => w.match(RegExp(`${e}{2,}`, 'g')))
    .flat()
    .filter(e => e)
    .length;
  console.log(get);
}