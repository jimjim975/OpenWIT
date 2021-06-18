
var server = 'azure.openwit.tech';
var port = 1433;
var instanceName = 'MSSQLSERVER'
var dbName = 'openwitprod';
var username = 'sa';
var password = 'Seniorproject123!';
var dbUrl = 'jdbc:sqlserver://' + server +  ":" + port;
console.log(dbUrl)

function writeManyRecords() {
  var conn = Jdbc.getConnection(dbUrl, username, password);
  conn.setAutoCommit(false);
  var start = new Date();
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Production");
  var data = sheet.getDataRange().getValues()
  var clearTable = conn.prepareStatement('TRUNCATE TABLE openwitprod.dbo.ProdTable');
  clearTable.execute();
  

  var stmt = conn.prepareStatement('INSERT INTO openwitprod.dbo.ProdTable' +  '(timestamp, age, gender, gradyear, major, minor, withdrawals, collegechoice, campusliving, exercise, employed, coops, extracurricular, classnum, timeoutfriends, vaccinated, classesfailed, freetime, druguse, cwentworthr,hstudying, GPA, overallexp, mentalhealth, wentresources, firstgen, terms, sleep) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');
    var numCols = data.length - 1;
    var answers;
    for (var i = 1; i < data.length; i++){ 
      answers = data[i];
      console.log(answers[27]);
      for (var j = 0; j < 28; j++) {
        //console.log(answers[j]);
        //console.log("j is " + j);
        stmt.setString(j+1, data[i][j]);
  
      }

      stmt.addBatch();
      
      
    }

  var batch = stmt.executeBatch();
  conn.commit();
  conn.close();

  var end = new Date();
  Logger.log('Time elapsed: %s ms for %s rows.', end - start, batch.length);
}
