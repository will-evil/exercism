// Package leap provides functional to check whether the year is a leap year.
package leap

// IsLeapYear return true if year is leap year.
func IsLeapYear(year int) bool {
	if year <= 0 {
		panic("year must be greater than 0")
	}

	return year%100 != 0 && year%4 == 0 || year%400 == 0
}
