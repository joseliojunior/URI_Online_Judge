/**
 * @author Josélio de S. C. Júnior <joseliojrx25@gmail.com>
 * @copyright Josélio de S. C. Júnior 2021
 * @submission #23515189
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