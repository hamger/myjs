import crypto from 'crypto'

export const crypMD5 = (content, algorithm = 'md5') => {
  /*
  * crypto.createHash()创建一个哈希算法的类，
  * 参数定义加密方式, 此处的md5可以换成任意hash加密的方法名称，
  * 如'sha1','sha256','sha512','ripemd160'
  */
  let md5 = crypto.createHash(algorithm); // 生成了一个md5的hash实例
  /*
  * update()方法更新哈希内容
  * 有记忆功能，多次调用可将字符串相加
  */
  md5.update(content);
  /*
  * digest()计算数据的摘要值，其参数是编码方式，可以有'hex'、'binary'或者'base64'
  * hex 十六进制；binary  二进制；
  */
  return md5.digest('hex');
  // return crypto.createHash('md5').update(content).digest();
}

export const crypHmac = (content, key, algorithm = 'sha256') => {
  // createHmac() 第一个参数是算法名，第二个是秘钥
  let hmac = crypto.createHmac(algorithm, key);
  hmac.update(content);
  return hmac.digest('hex');
}

export const encrypt = (data, key, algorithm = 'aes192') => {
  const cipher = crypto.createCipher(algorithm, key);
  var crypted = cipher.update(data, 'utf8', 'hex');
  // 通过 final 方法输出加密串
  crypted += cipher.final('hex');
  return crypted;
}
export const decrypt = (encrypted, key, algorithm = 'aes192') => {
  const decipher = crypto.createDecipher(algorithm, key);
  // cipher.update(data[, inputEncoding][, outputEncoding])
  var decrypted = decipher.update(encrypted, 'hex', 'utf8');
  // decipher.final([outputEncoding])
  decrypted += decipher.final('utf8');
  return decrypted;
}

export const  publicEncrypt= (data, pub_key) => {
  // data 需要转换为buffer类型
  return crypto.publicEncrypt(pub_key, Buffer.from(data));
}
export const  privateDecrypt = (encrypted, sec_key) => {
  // encrypted 必须是buffer类型
  return crypto.privateDecrypt(sec_key, Buffer.from(encrypted));
}

// sign 签名
export const sign = (data, sec_key, algorithm = 'RSA-SHA256') => {
  const sign = crypto.createSign(algorithm);
  // sign.update(data[, inputEncoding])
  sign.update(data);
  // sign.sign(privateKey[, outputFormat])
  return sign.sign(sec_key, 'hex');
}

// verify 验证
export const verify = (data, signature, pub_key, algorithm = 'RSA-SHA256') => {
  const verify = crypto.createVerify(algorithm);
  verify.update(data);
  // verify.verify(object, signature[, signatureFormat])
  return verify.verify({key: pub_key}, signature, 'hex')
}
