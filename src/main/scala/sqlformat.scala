import scala.io.Source

//branch 2 added
// second try

//thirdTry

object sqlformat extends App{

    val selectpat = "select.*".r
    var selectStr = ""
    var processAttribute:String = ""

    val frompat = ".*from.*".r
    var fromStr = ""
    val wherepat = ".*where.*".r
    var whereStr = ""

    var attributes: String = ""
    val filename = "mysql2.sql"
    for (line <- Source.fromFile(filename).getLines) {
      var lowercaseLine = line.toLowerCase
      lowercaseLine match {

          //commit branch 2

        case selectpat(_*) => processAttribute = "select"
          val selectSplit = lowercaseLine.split("select")
          if (selectSplit.nonEmpty){
              lowercaseLine = selectSplit(1)
          }


        case frompat(_*) =>
          processAttribute = "from"
          val fromSplit = lowercaseLine.split("from")
          if (fromSplit.nonEmpty) {
            lowercaseLine = fromSplit(1)
          }

        case wherepat(_*) =>
          processAttribute = "where"
          val whereSplit = lowercaseLine.split("where")
          if (whereSplit.nonEmpty) {
            lowercaseLine = whereSplit(1)
          }

        case _ => ""
      }

      //    println(processAttribute)

      processAttribute match {
        case "select" => if (lowercaseLine != "select"){selectStr += " " + lowercaseLine}
        case "from" => if (lowercaseLine != "from"){fromStr += " " + lowercaseLine}
        case "where" => if (lowercaseLine != "where"){whereStr += " " + lowercaseLine}
      }


    }
    val SelectAttributes = selectStr.split(",")

    SelectAttributes.foreach(println)

    println(selectStr)
    println(fromStr)
    println(whereStr)

  }
