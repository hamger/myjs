var Util = {}
/**
 * 合并对象
 */
Util.mergeObj = (target, ...sources) => Object.assign(target, ...sources)

Util.delProperty = (obj, property) => {
  delete obj[property]
  return obj
}

module.exports = Util