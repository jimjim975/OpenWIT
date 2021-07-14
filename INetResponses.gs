var server = '';
var port = ;
var instanceName = ''
var dbName = '';
//Only accessible via text in this script and for people who have
//Access to Google Sheets, this password is not able to be grabbed
//mid transit.
var username = '';
var password = '';
//
var dbUrl = 'jdbc:sqlserver://' + server +  ":" + port;


//Sends data from sheet to MSSQL Database.
function writeManyRecordsreddit() {
  console.log(dbUrl);
  var conn = Jdbc.getConnection(dbUrl, username, password);
  //var conn = Jdbc.getConnection(dbUrl, username, //password,);
  conn.setAutoCommit(false);
  var start = new Date();
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Form Responses 2");
  var data = sheet.getDataRange().getValues()
  
  
  //Statement sent to DB to clear it before sending new sheet data.
  var tableRemoveTime = new Date();

  var clearTable = conn.prepareStatement('TRUNCATE TABLE openwitprod.dbo.ProdTableINetNew');
  clearTable.execute();

  var tableRemoveTimeEnd = new Date();

  console.log("Time to remove DB items: %s milliseconds", tableRemoveTimeEnd - tableRemoveTime);
  
  // SQL statement that will be sent each time the loop runs.
  var stmt = conn.prepareStatement('INSERT INTO openwitprod.dbo.ProdTableINetNew' +  '(timestamp, terms,age, gender, gradyear, major, minor, withdrawals, collegechoice,firstgen, campusliving, exercise, sleep, employed, coops, extracurricular, classnum, timeoutfriends, vaccinated, classesfailed, freetime,mentalhealth, druguse, cwentworthr,hstudying, GPA, overallexp, wentresources) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)');

    // Loops through each row then each column item, sends data to DB, then increments 1 to go to next row.
    var answers;
    var loopTimer = new Date();
    for (var i = 1; i < data.length; i++){ 
      answers = data[i];
      
      for (var j = 0; j < answers.length; j++) {
        //console.log(answers[j]);
        //console.log("j is " + j);
        stmt.setString(j+1, data[i][j]);
  
      }
      //Adding items from row to batch.
      stmt.addBatch();
      
      
    }
    var loopTimerEnd = new Date();
  //Executes batch and sends all data to DB.
  var batch = stmt.executeBatch();

  console.log("Time to create rows in db: %s ms for %s rows", loopTimerEnd - loopTimer, batch.length);

  /*var clearWS = conn.prepareStatement('SELECT RTRIM([timestamp]),RTRIM([age]),RTRIM([gender]),RTRIM([gradyear]),RTRIM([major]),RTRIM([minor]),RTRIM([withdrawals]),RTRIM([collegechoice]),RTRIM([campusliving]),RTRIM([exercise]),RTRIM([employed]),RTRIM([coops]),RTRIM([extracurricular]),RTRIM([classnum]),RTRIM([timeoutfriends]),RTRIM([vaccinated]),RTRIM([classesfailed]),RTRIM([freetime]),RTRIM([druguse]),RTRIM([cwentworthr]),RTRIM([hstudying]),RTRIM([GPA]),RTRIM([overallexp]),RTRIM([mentalhealth]),RTRIM([wentresources]),RTRIM([firstgen]),RTRIM([terms]),RTRIM([sleep]) FROM openwitprod.dbo.ProdTable');
  clearWS.execute();*/
  
  //Closes DB Connection
  conn.commit();
  conn.close();

  //Stats
  var end = new Date();
  Logger.log('Time elapsed: %s ms for %s rows.', end - start, batch.length);
}
