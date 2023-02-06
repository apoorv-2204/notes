# Go Facts

- Go Basics

## Beginners Basic

1) Go structure consist of componenet and each component have a meaning
2) Go program is always declared in package and is case sensitive
  
        ```go
        
            package <package-name>
            
            import (
                "fmt"
            )
        
            func main(){
              fmt.prinln("yo");
            }
        
        ```
3) package name should not start with capital letters
4) Statically typed, not allowed to change type at runtime
5) exported function start with capital letter
6)  


### Rough notes
- dynamically-typed languages perform type checking at runtime, while statically typed languages perform type checking at compile time
- 



// Lexer checks the grammer of the given code, reports if it is or inaccordance to the language grammer
// or checks whether you have return synticaly well formed code or not

// always put a semuilcon at the end of the line
//  staticaly typped langauge
// everything has a type in go
// types: String, Boolean, uint,float, complex
// more types
// Array, slices , map , structs, pointers, functions, interfaces, channels

### Documentation Comments in Go

- Go uses documentation comments for documenting code and generating package documentation.
- Package comments should be written before the package clause, starting with "Package x..."
- Function comments should be written before the function declaration, starting with the -  function name, and explain arguments, purpose, and return values.