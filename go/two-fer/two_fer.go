package twofer

import (
	"fmt"
	"unicode"
)

// ShareWith should have a comment d.
func ShareWith(name string) string {
	if name == "" || !unicode.IsLetter([]rune(name)[0]) {
		name = "you"
	}

	return fmt.Sprintf("One for %s, one for me.", name)
}
