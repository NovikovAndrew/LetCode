public func example(of title: String, complition: () -> Void) {
    print(title)
    complition()
    print("----END----")
    print()
}
