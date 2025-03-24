const fs = require('fs')
const { exec } = require('child_process')
const i = 5
function main() {
if (i === 0) return
fs.writeFileSync(`./Sully_${i - 1}.js`, `const fs = require('fs')\nconst { exec } = require('child_process')\nconst i = ${i - 1}\n` + main.toString() + "; main()\n")
exec(`node Sully_${i - 1}.js`, (_, __, ___) => {})
}; main()
