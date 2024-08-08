/*
 * DisneyInfinity Gateway Crypto
 *
 * Author: JiroTheOne
 * 
 * To run:
 * - Install node.js and crypto-js and fs
 * - Run node gatewayCrypto.js
 *
 * Have a look at the settings in the next section and tweak them for your preference.
 *
 */
const CryptoJS = require("crypto-js");
const fs = require('fs');

/*=================== Basic Settings ===================*/
// Set logLevel
// 0 for basic logging of decrypted pairs, 
// 1 for verbose logging - you probably want to redirect the output to a file in that case.
const logLevel = 0

// filenames to read and write assume relative if no path specified
const sourceGatewayFile = 'fl.txt'; // needs to have been unluaced
const decodedGatewayFile = 'fl2.txt';

/*=============== Encryption Settings ==================*/
const key = CryptoJS.enc.Hex.parse("000102030405060708090a0b0c0d0e0f");
const iv = CryptoJS.enc.Utf8.parse("0123456789012345");

var config = { 
  iv: iv,
  mode: CryptoJS.mode.CBC,
  padding: CryptoJS.pad.Pkcs7 // Seems to give cleaner output than NoPadding or ZeroPadding when decrypting
};

/*
// for actionRouter values we have to xor index with part 0, 4, 8, 12 of the IV
const ivXor1 = CryptoJS.enc.Utf8.parse("1123556799013345"); 
var config = { 
  iv: ivXor1,
  mode: CryptoJS.mode.CBC,
  padding: CryptoJS.pad.Pkcs7
};
*/

/*==================== Do Stuff ========================*/

//decryptGateway();

// Example of calling encrypt on a single value needs more testing and 
// output value needs converting back to lua string
encrypt("TBX_Ursula_Premium");

/*====================== Logic =========================*/
function decryptGateway() {
	var fields;

	fs.readFile(sourceGatewayFile, 'utf8' , (err, data) => {
		if (err) {
			console.error(err);
			return;
		}
		//console.log(data)
		//fields = data.match(/"(.*?)[^\\]"/g);
		fields = data.match(/(?:"(.*?)[^\\]")|({)/g); // capture opening { so we have an index for the IV
		var index = -1; // so we skip the first indexes

		var counter = 0;
		var encryptVal = {};
		var decryptVal = {};
		fields.forEach(element => {
			counter++;
			logIt("" + index + " : " + element, 1);
			if ('{' != element) {
				var input = element.substring(1,element.length-1); // ignore quotes
				var decrypted = logResult(decrypt(luaStringToHex(input), 0)); // TBC need to pass index instead of 1 here for actionRouter files
				//logIt("\"" + decrypted + "\"," + element, 1);
				encryptVal[counter] = input;
				decryptVal[counter] = decrypted;
			} else {
				index++;
			}
		});
		var outdata = data;
		for (let index = 0; index <= counter; index++) {
			
			logIt(encryptVal[index] + " = " + decryptVal[index], 0);
			outdata = outdata.replaceAll(encryptVal[index], decryptVal[index]);	
		}

		fs.writeFile(decodedGatewayFile, outdata, err => {
			if (err) {
				console.error(err);
				return;
			}
		});
		return;
	})
	return;
}

function decimalToHex(d, padding) {
	var hex = Number(d).toString(16);
	padding = typeof (padding) === "undefined" || padding === null ? padding = 2 : padding;

	while (hex.length < padding) {
	  hex = "0" + hex;
	}

	return hex;
}

function luaStringToHex(input) {
	logIt("Input: " + input, 1);
	let chars = input.split("");
	let codes = [];
	const special = ["a", "b", "f", "n", "r", "t", "v", "\\", "\"", "'", "[", "]"];
	const specialCodes = [7, 8, 12, 10, 13, 9, 11, 92, 34, 39, 91, 93];
	for (i = 0; i < chars.length; i++) {
		let character, code, hex;
		var isEscape = chars[i] == "\\";
			
		if (i < chars.length && isEscape && special.includes(chars[i+1])) {
		  let next = specialCodes[special.indexOf(chars[i+1])];
		  character = chars[i] + chars[i+1];
		  code = parseFloat(next);
		  hex = decimalToHex(next);
		  codes.push(hex);
		  i+=1;
		  
		} else if (isEscape && !isNaN(parseFloat(chars[i+1]))) {
		  let nextChar = input.substring(i+1, i+4);
		  character = input.substring(i+0, i+4);
		  code = parseFloat(nextChar);
		  hex = decimalToHex(nextChar);
		  codes.push(hex);
		  i+=3;

		} else {
		  character = chars[i];
		  code = input.charCodeAt(i);
		  hex = code.toString(16);
		  codes.push(hex);
		}		
		logIt("Char: " + (character + "   ").substring(0, 4) + " Code: " + (code + "  ").substring(0, 3) + " Hex: " + hex, 1);
	}
	return(codes.join(""));
}

/**
 * We need to XOR the IV when decrypting from the RAW lua 
 * dump files instead of unluaced files
 * @param {*} index 
 * @returns 
 */
function nextIV(index) {
	var iv0 = 0, iv4 = 4, iv8 = 8, iv12 = 2;
	iv0 = iv0 ^ index;
	iv4 = iv4 ^ index;
	iv8 = iv8 ^ index;
	iv12 = iv12 ^ index;
	let next = ["", iv0, "123", iv4, "567", iv8, "901", iv12, "345"];
	return next.join("");
}

// try decrypt
function decrypt(encrypted, index) {
	logIt("Encrypted: " + encrypted, 1);
	var newIV = nextIV(index);
	config.iv = CryptoJS.enc.Utf8.parse(newIV);
	logIt("iv: " + index + " : " + newIV, 1);

	var aesDecryptor = CryptoJS.algo.AES.createDecryptor(key, config);
	var source = CryptoJS.enc.Hex.parse(encrypted);
	var decrypted = aesDecryptor.finalize(source);
	
	logIt("Decrypted: " + CryptoJS.enc.Hex.stringify(decrypted), 1);
	
	var latin1 = CryptoJS.enc.Latin1.stringify(decrypted);
	return latin1;
}

function mapTypeVerbose(typeId, result) {
	switch (typeId) {
    case 1:
	  var a = result.match(/../g);             // split number in groups of two
	  a.reverse(); 
      return "Number: " + result.charCodeAt(0) + " :: " + parseInt(result, 16);
    case 2:
      return "String: " + result;
    case 3:
      return "Boolean: " + result + " :: " + parseInt(result);
    default:
      return "Unknown(" + typeId +"): " + result;
	}
}


function mapType(typeId, result) {
	switch (typeId) {
    case 1: // number
      return Number("0x" + CryptoJS.enc.Hex.stringify(CryptoJS.enc.Latin1.parse(result.substring(0,result.length-1))));
    case 2: // string
      return result;
    case 3: // bool?
      return "Boolean: " + result + " :: " + parseInt(result.substring(1,result.length-1), 16);
    default:
      return "Unknown(" + typeId +"): " + result;
	}
}

function logResult(result) {
  var endIndex = result.length;
  // not sure about this it was helping to remove trailing garbage chars
  /*
  for (var i = result.length - 1 ; i >= 0; i--) {
    if (result.charCodeAt(i) != 11) {
      endIndex = i+1;
      break;
    }
  }*/
  return mapType(result.charCodeAt(0), result.substring(1, endIndex));
}

function encrypt(plaintext) {
	// this will need to append the type prefixes.
	//var indata = CryptoJS.enc.Hex.parse("2Gateway"); // example string captured during exe debug
	// try encrypt
	var indata = CryptoJS.enc.Hex.parse("2" + plaintext); // just strings for now could probably infer type from key
	let aesEncryptor = CryptoJS.algo.AES.createEncryptor(key, config);
	let encrypted = aesEncryptor.finalize(indata);
	let hexEncrypted = CryptoJS.enc.Hex.stringify(encrypted);
	// still need to turn it back into Lua strings with a stringToLuaHex function
	logIt(plaintext + " = " + hexEncrypted, 0);
	return hexEncrypted; 
}

function logIt(message, level) {
	if (logLevel >= level) {
		console.log(message);
	}
}
