<template>
  <div class="wrap">
    {{text}}
    <br>
    MD5加密：{{textMD5}}
    <br>
    Hmac加密：{{textHmac}}
    <br>
    AES加密：{{textAES}}
  </div>
</template>
<script>
import crypto from 'crypto'
const secretKey = 'DwYCjqFx5YCx0h0S' 

function crypMD5 (content) {
  /*
  * crypto.createHash()创建一个哈希算法的类，
  * 参数定义加密方式, 此处的md5可以换成任意hash加密的方法名称，
  * 如'sha1','sha256','sha512','ripemd160'
  */
  let md5 = crypto.createHash('md5'); // 生成了一个md5的hash实例
  /*
  * update()方法更新哈希内容
  * 有记忆功能，多次调用可将字符串相加
  */
  md5.update(content);
  /*
  * digest()计算数据的摘要值，其参数是编码方式，可以有'hex'、'binary'或者'base64'
  * hex 十六进制数值；binary  buffer类型；
  */
  return md5.digest('hex');
  // return crypto.createHash('md5').update(content).digest();
}

function crypHmac (content, secretKey) {
  let hmac = crypto.createHmac('sha256', secretKey);
  hmac.update(content);
  return hmac.digest('hex');
}

function aesEncrypt(data, key) {
  const cipher = crypto.createCipher('aes192', key);
  var crypted = cipher.update(data, 'utf8', 'hex');
  crypted += cipher.final('hex');
  return crypted;
}
function aesDecrypt(encrypted, key) {
  const decipher = crypto.createDecipher('aes192', key);
  var decrypted = decipher.update(encrypted, 'hex', 'utf8');
  decrypted += decipher.final('utf8');
  return decrypted;
}

// var data = 'Hello, this is a secret message!';
// var key = "1234567812345678";
// var encrypted = aesEncrypt(data, key);
// var decrypted = aesDecrypt(encrypted, key);

// console.log('Plain text: ' + data);
// console.log('Encrypted text: ' + encrypted);
// console.log('Decrypted text: ' + decrypted);

export default {
  name: 'test',
  data () {
    return {
      text: 'hello'
    }
  },
  computed: {
    textMD5 () {
      return crypMD5(this.text);
    },
    textHmac () {
      return crypHmac(this.text, secretKey);
    },
    textAES () {
      // return aesEncrypt(this.text, key);
      return crypHmac(this.text, 'Password!');
    }
  },
  methods: {
  }
}
</script>
<style lang='less' scoped>
.wrap {
  padding-top:  20px;
}
</style>