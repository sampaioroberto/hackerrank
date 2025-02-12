func staircase(n: Int) -> Void {
    precondition(n > 0 && n <= 100)
    var counter = n
    while (counter != 0) {
        var text = String(repeating: " ", count: counter - 1)
        text.append(contentsOf: String(repeating: "#", count: n - counter + 1))
        print(text)
        counter -= 1
    }
}
