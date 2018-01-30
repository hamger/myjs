<template>
  <div class="wrap">
    原文：{{text}}
    <br>
    MD5加密：{{textMD5}}
    <br>
    Hmac加密：{{textHmac}}
    <br>
    AES加密：{{textAES}}
    <br>
    AES解密：{{textAESde}}
    <br>
    RSA加密：{{textRSA.toString('hex')}}
    <br>
    RSA解密：{{textRSAde.toString('utf-8')}}
    <br>
    数字签名：{{isSign}}
  </div>
</template>
<script>
import { crypMD5,
  crypHmac, 
  encrypt, 
  decrypt, 
  sign, 
  verify, 
  publicEncrypt, 
  privateDecrypt 
} from '../common/js/crypto.js'
import cryptoJS from 'crypto-js'

const secretKey = 'DwYCjqFx5YCx0h0S'

const sec_key = `-----BEGIN RSA PRIVATE KEY-----
MIICXQIBAAKBgQDFWnl8fChyKI/Tgo1ILB+IlGr8ZECKnnO8XRDwttBbf5EmG0qV
8gs0aGkh649rb75I+tMu2JSNuVj61CncL/7Ct2kAZ6CZZo1vYgtzhlFnxd4V7Ra+
aIwLZaXT/h3eE+/cFsL4VAJI5wXh4Mq4Vtu7uEjeogAOgXACaIqiFyrk3wIDAQAB
AoGBAKdrunYlqfY2fNUVAqAAdnvaVOxqa+psw4g/d3iNzjJhBRTLwDl2TZUXImEZ
QeEFueqVhoROTa/xVg/r3tshiD/QC71EfmPVBjBQJJIvJUbjtZJ/O+L2WxqzSvqe
wzYaTm6Te3kZeG/cULNMIL+xU7XsUmslbGPAurYmHA1jNKFpAkEA48aUogSv8VFn
R2QuYmilz20LkCzffK2aq2+9iSz1ZjCvo+iuFt71Y3+etWomzcZCuJ5sn0w7lcSx
nqyzCFDspQJBAN3O2VdQF3gua0Q5VHmK9AvsoXLmCfRa1RiKuFOtrtC609RfX4DC
FxDxH09UVu/8Hmdau8t6OFExcBriIYJQwDMCQQCZLjFDDHfuiFo2js8K62mnJ6SB
H0xlIrND2+/RUuTuBov4ZUC+rM7GTUtEodDazhyM4C4Yq0HfJNp25Zm5XALpAkBG
atLpO04YI3R+dkzxQUH1PyyKU6m5X9TjM7cNKcikD4wMkjK5p+S2xjYQc1AeZEYq
vc187dJPRIi4oC3PN1+tAkBuW51/5vBj+zmd73mVcTt28OmSKOX6kU29F0lvEh8I
oHiLOo285vG5ZtmXiY58tAiPVQXa7eU8hPQHTHWa9qp6
-----END RSA PRIVATE KEY-----`

const pub_key = `-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFWnl8fChyKI/Tgo1ILB+IlGr8
ZECKnnO8XRDwttBbf5EmG0qV8gs0aGkh649rb75I+tMu2JSNuVj61CncL/7Ct2kA
Z6CZZo1vYgtzhlFnxd4V7Ra+aIwLZaXT/h3eE+/cFsL4VAJI5wXh4Mq4Vtu7uEje
ogAOgXACaIqiFyrk3wIDAQAB
-----END PUBLIC KEY-----`

export default {
  name: 'test',
  data () {
    return {
      text: 'Hello, this is a secret message!'
    }
  },
  computed: {
    textMD5 () {
      return crypMD5(this.text);
      // return cryptoJS.MD5(this.text).toString();
    },
    textHmac () {
      return crypHmac(this.text, secretKey);
      // return cryptoJS.HmacSHA256(this.text, secretKey).toString();
    },
    textAES () {
      return encrypt(this.text, secretKey);
      // return cryptoJS.AES.encrypt(this.text, secretKey).toString();
    },
    textAESde () {
      return decrypt(this.textAES, secretKey);
      // return cryptoJS.AES.decrypt(this.textAES, secretKey).toString(cryptoJS.enc.Utf8);
    },
    textRSA () {
      return publicEncrypt(this.text, pub_key);
    },
    textRSAde () {
      return privateDecrypt(this.textRSA, sec_key);
    },
    isSign () {
      let signature = sign(this.text, sec_key)
      console.log(signature);
      let isTrue = verify(this.text, signature, pub_key)
      console.log(isTrue)
      if (isTrue) return 'this is a real sign'
      else return 'this is a fake sign'
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