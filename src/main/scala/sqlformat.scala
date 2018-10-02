import scala.io.Source

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

        case selectpat(_*) => {processAttribute = "select"
          val selectSplit = lowercaseLine.split("select")
          if (selectSplit.length > 0){
              lowercaseLine = selectSplit(1)
          }
        }

        case frompat(_*) => {
          processAttribute = "from"
          val fromSplit = lowercaseLine.split("from")
          if (fromSplit.length > 0) {
            lowercaseLine = fromSplit(1)
          }
        }
        case wherepat(_*) => {
          processAttribute = "where"
          val whereSplit = lowercaseLine.split("where")
          if (whereSplit.length > 0) {
            lowercaseLine = whereSplit(1)
          }
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
