/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
let [h, w] = l.shift().split(' ').map(e => +e);
while (true) {
  if (h === 0) break;
  let d = Array.from(Array(h), _ => l.shift().replace(/\r|\n/, ''));
  let [nh, nw] = l.shift().split(' ').map(e => +e);
  nh = nh / h;
  nw = nw / w;
  d = d.flatMap(e => Array.from(Array(nh), _ => e))
    .map(e => e.split('').map(f => f.repeat(nw)).join(''))
    .join('\n');
  [h, w] = l.shift().split(' ').map(e => +e);
  console.log(`${d}\n`);
}