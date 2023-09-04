package main

func looper(val []string) {
	for _, value := range val {
		println(value)
	}
}

func main() {
	looper([]string{"a", "b", "c"})
}
