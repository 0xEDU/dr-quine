/*
    a
*/
function b() {return b.toString()}
function main() {
/*
    b
*/
console.log("/*\n    a\n*/\n" + b() + "\n" + main.toString() + " main();")} main();
