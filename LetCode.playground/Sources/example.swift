public func example(_ title: String, complition: () -> Void) {
    print(title)
    complition()
    print()
}
