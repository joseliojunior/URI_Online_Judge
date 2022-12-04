/**
 * @author Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
 * @copyright Josélio Júnior (Lunatic Fox) 2021
*/

fun main(args: Array<String>) {
    val t = readLine()?.toInt() ?: 0

    for (i in 1..t) {
        println(
            readLine()!!.replace("\\s+".toRegex(), " ")
            .replace("^\\s|\\s$".toRegex(), "")
            .split(" ")
            .map{x -> x[0]}
            .joinToString("")
        )
    }
}