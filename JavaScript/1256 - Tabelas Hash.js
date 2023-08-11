/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
const r = +l.shift();
const rs = Array.from(Array(r), _ => {
  const k = +l.shift().match(/\d+/)[0];
  const h = l.shift().replace(/\r|\n/g, '').split(' ').map(e => +e);
  const u = Array.from(Array(k), (_, i) => `${i} -> `);
  h.forEach(e => {
    const p = e % k;
    u[p] = `${u[p]}${e} -> `;
  });
  return `${u.map(e => `${e}\\`).join('\n')}`;
});
console.log(rs.join('\n\n'));