const fs = require('fs')

const obj = {}
const langs = ['C', 'C#', 'Java', 'JavaScript', 'Kotlin', 'Lua', 'Pascal', 'Python']
  .map(e => fs.readdirSync(`./${e}`))
  .flat()
  .filter(e => e !== '.gitignore')

langs.forEach(e => {
  const title = e.replace(/(.+?)\.[^.]+$/, '$1')
  let ex = e.replace(/.+?\.([^.]+)$/, '$1')

  const ext = {
    cs: { img: 'c-sharp', dir: 'C%23' },
    js: { img: 'javascript', dir: 'JavaScript' },
    kt: { img: 'kotlin' },
    pas: { img: 'pascal' },
    py: { img: 'python' },
  }

  ex = ext[ex] ? ext[ex].img : ex

  if (!obj[title]) obj[title] = []

  const exw = ext[ex]?.dir ??`${ex[0]?.toUpperCase()}${ex.slice(1)}`

  obj[title].push(`[![](https://gh-tags.vercel.app/api?lang=${ex}&size=small)](https://github.com/lunatic-fox/uri-online-judge/blob/main/${exw}/${encodeURI(e)})`)

})

fs.writeFileSync('./README.md',
  `# Beecrowd problem solutions
  
  <div align="center">

  ## Please, if you are learning from the [beecrowd](https://www.beecrowd.com.br/) platform consult those solutions as your last resort, otherwise you probably will not learn the best as you should and/or get biased.
  </div>\n\n${
    Object.entries(obj)
    .sort()
    .map(([k, v]) => `- ${k} - ${v.join('&nbsp;')}`).join('\n')
  }`
)