var connection = require('./dbConnection')
module.exports = function (sql, params,resolve, reject) {
	connection.connect(function() {
    connection.query(sql, params, function(error, response) {
      if (error) reject(error)
      else resolve(response)
    })
  })
}