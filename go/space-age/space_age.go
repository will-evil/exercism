// Package space calculates age on different planets.
package space

import "fmt"

// Planet is type for stored planet name.
type Planet string

const secondInEarthYear = 31557600

var planetsPeriods map[Planet]float64

func init() {
	planetsPeriods = make(map[Planet]float64)
	planetsPeriods["Earth"] = 1
	planetsPeriods["Mercury"] = 0.2408467
	planetsPeriods["Venus"] = 0.61519726
	planetsPeriods["Mars"] = 1.8808158
	planetsPeriods["Jupiter"] = 11.862615
	planetsPeriods["Saturn"] = 29.447498
	planetsPeriods["Uranus"] = 84.016846
	planetsPeriods["Neptune"] = 164.79132
}

// Age returns age in years.
func Age(seconds float64, planet Planet) float64 {
	var period float64
	var ok bool

	if period, ok = planetsPeriods[planet]; !ok {
		panic(fmt.Sprintf("planet with name %s not support", planet))
	}

	secondsInYear := secondInEarthYear * period

	return seconds / secondsInYear
}
