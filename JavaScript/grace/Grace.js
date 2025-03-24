/*
    a
*/
const fs=require('fs')
const a=(c)=>{function main() {c()}; main()}
const b=(s)=>`/*\n    a\n*/\nconst fs=require('fs')\nconst a=(c)=>{function main() {c()}; main()}\nconst b=${s}\n`
const c=()=>{fs.writeFileSync('./Grace_kid.js',b(b.toString()) + "const c=" + c.toString() + "; a(c)\n")}; a(c)
