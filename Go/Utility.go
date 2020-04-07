package main

import "fmt"
import "regexp"

type ln struct {
	count int
}

type clean struct {}

func print(val ...interface{}) {
	cleaning:=false
	r1,_:=regexp.Compile("\\n\\t+")
	r2,_:=regexp.Compile("^\\t+")
	for _,v:=range val {
		switch v.(type) {
			case clean:
				cleaning=true
			case ln:
				l,_:=v.(ln)
				for n:=0;n<l.count;n++ {fmt.Println()}
			case string:
				t,_:=v.(string)
				if cleaning {
					t=r1.ReplaceAllString(t,"\n")
					t=r2.ReplaceAllString(t,"\n")
				}
				fmt.Print(t)
			default:
				fmt.Print(v)
		}
	}
}