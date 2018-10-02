import scala.io.Source

object sqlparse extends App {

  val selectpat = "select.*".r
  var selectStr = ""
  var processAttribute:String = ""

  val frompat = ".*from.*".r
  var fromStr = ""
  val wherepat = ".*where.*".r
  var whereStr = ""

  var attributes: String = ""
  val filename = "mysql1.sql"
  for (line <- Source.fromFile(filename).getLines) {
    val lowercaseLine = line.toLowerCase
     lowercaseLine match {

            case selectpat(_*) => processAttribute = "select"
            case frompat(_*) => processAttribute = "from"
            case wherepat(_*) => processAttribute = "where"
            case _ => ""
          }

//    println(processAttribute)

    processAttribute match {
        case "select" => if (lowercaseLine != "select"){selectStr += lowercaseLine}
        case "from" => if (lowercaseLine != "from"){fromStr += lowercaseLine}
        case "where" => if (lowercaseLine != "where"){whereStr += lowercaseLine}
      }
  }

  println(selectStr)
  println(fromStr)
  println(whereStr)

}
