/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2024
*/

const input = require('fs').readFileSync('/dev/stdin', 'utf8').split('\n').filter(e => e)
input.forEach(ln => {
  const [d, n] = ln.split(' ')
  if (ln !== '0 0') {
    const nn = n.replace(RegExp(d, 'g'), '')
    console.log(+nn === 0 ? '0' : nn.replace(/^0+(\d+)/g, '$1'))
  }
})
