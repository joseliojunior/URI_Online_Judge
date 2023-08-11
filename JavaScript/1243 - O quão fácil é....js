/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2022
*/

const l = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n');
let get = l.shift();
while (get) {
  get = [get.split(' ')
    .map(e => {
      const w1 = e.match(/^[a-zA-Z]+\.?$/);
      const w2 = w1 ? w1[0] : null;
      return w2;
    })
    .filter(e => e)
    .map(e => e.replace('.', '').length)]
    .forEach(e => {
      let avg = e.length > 0 ? parseInt(e.reduce((a, b) => a + b) / e.length) : 0;
      avg = avg >= 6 ? 1000
      : avg <= 3 ? 250
      : 500;
      console.log(avg);
    });
  get = l.shift();
}