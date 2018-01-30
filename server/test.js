var crypto = require('crypto')
var assert = require("assert")
/**
 * crypto.getDiffieHellman(group_name)
 * 生成一个预定义的dh交换key对象，支持如下几种：‘modp1’, ‘modp2’, ‘modp5’ (defined in RFC 2412) 
 * and ‘modp14’, ‘modp15’, ‘modp16’, ‘modp17’, ‘modp18’ (defined in RFC 3526)。
 * 返回的对象就像dh实例一样，但是不允许去改变它的私有key和公有key。
 */
var alice = crypto.getDiffieHellman('modp5'); // crypto.createDiffieHellman(512);
var bob = crypto.getDiffieHellman('modp5'); // crypto.createDiffieHellman(1024);

/**
 * diffieHellman.generateKeys([encoding]) 
 * 生成dh的私有key和公有key，此方法根据指定的encoding返回公有key，
 * 公有key会传递给另外一方，用来生成对称密钥
 */
alice.generateKeys();
bob.generateKeys();

/**
 * diffieHellman.computeSecret(other_public_key, [input_encoding], [output_encoding])
 * 根据对方的公有 key 算出对称密钥，第二个参数是对方密钥输入的 encoding，第三个是对称密钥输出的格式
 */
var alice_secret = alice.computeSecret(bob.getPublicKey(), 'binary', 'hex');
var bob_secret = bob.computeSecret(alice.getPublicKey(), 'binary', 'hex');

/* alice_secret and bob_secret should be the same */
console.log(alice_secret == bob_secret)

// crypto.createDiffieHellman(primeLength[, generator]) 素数长度 【，底数】
var diffieHellman1 = crypto.createDiffieHellman(256);
// 得到 diffieHellman1 的素数
var prime1 = diffieHellman1.getPrime('base64');
// 根据 prime1 创建另一个实例对象
var diffieHellman2 = crypto.createDiffieHellman(prime1, 'base64');
var key1 = diffieHellman1.generateKeys();
var key2 = diffieHellman2.generateKeys('hex');
// diffieHellman.computeSecret(other_public_key, [input_encoding], [output_encoding])
// 根据 对方的公有 key 算出对称密钥，第二个参数是对方密钥输入的encoding，第三个是对称密钥输出的格式
var secret1 = diffieHellman1.computeSecret(key2, 'hex', 'base64');
var secret2 = diffieHellman2.computeSecret(key1, 'binary', 'base64');
// 如果相等不返回任何值，如果不相等则返回带有message属性的AssertionError，若message为undefined，则为默认的错误信息。
assert.equal(secret1, secret2);
