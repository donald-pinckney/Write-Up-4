import Foundation

/*
    This function takes a filename as input, and reads each line sequentially.
    It places each line as a String as a single entry into an array. Then it returns this array.
*/
func readLines(inFile: String) -> [String] {
    let fpo = fopen(inFile, "r")
    guard let fp = fpo else {
        fatalError("ERROR!!! Could not read file: \(inFile)")
    }

    var lines: [String] = []
    while true {
        var line: UnsafeMutablePointer<Int8>? = nil
        var len: Int = 0
        let read = getline(&line, &len, fp)
        if read == -1 {
            break
        }

        let lineStr = String(cString: line!).trimmingCharacters(in: .newlines)
        lines.append(lineStr)
    }

    fclose(fp)
    return lines
}

