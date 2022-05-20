/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8')
  .replace(/\r/g, '')
  .split('\n');
const c = [];
const key = 'abc def ghi jkl mno pqrs tuv wxyz'.split(' ');
let n = 0;
key.forEach((e, i) =>
  e.split('').forEach((_, j) => {
    c[String.fromCharCode(97 + n)] = `${i + 2}`.repeat(j + 1);
    n++;
  })
);
Array.from(Array(+l.shift()), _ => {
  const str = l.shift()
    .split('')
    .map(e => c[e] ? c[e]
      : e === ' ' ? '0'
      : `#${c[e.toLowerCase()]}`)
    .map((e, i, a) => {
      if (a[i + 1] && a[i + 1].match(/^\d/))
        return e.match(/\d$/)[0] === a[i + 1].match(/^\d/)[0] ? `${e}*` : e;
      return e;
    })
    .join('');
  console.log(str);
});