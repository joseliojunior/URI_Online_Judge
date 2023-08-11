/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

const p = require('fs').readFileSync('/dev/stdin', 'utf8');
const l = p.split('\n');

const arr = Array.from(Array(+l.shift()), _ => {
    const newArr = l.shift().split('')
        .map(e => e.match(/[A-Z_a-z]/) ? String.fromCharCode(e.charCodeAt() + 3) : e)
        .reverse();

    return [...newArr.slice(0, newArr.length / 2),
        ...newArr.slice(newArr.length / 2, newArr.length)
        .map(e => String.fromCharCode(e.charCodeAt() - 1))
    ].join('');
}).join('\n');

console.log(arr);