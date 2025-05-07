//
//  SyntaxView.swift
//  Challenge3Project
//
//  Created by Agostino Russo  on 10/12/24.
//

import SwiftUI

struct SyntaxView: View {
    let language: ProgrammingLanguage

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            switch language.name {
            case "Swift":
                swiftSyntax()
            case "Python":
                pythonSyntax()
            case "Java":
                javaSyntax()
            case "C":
                cSyntax()
            case "C++":
                cppSyntax()
            case "Ruby":
                rubySyntax()
            case "JavaScript":
                javascriptSyntax()
            case "C#":
                csharpSyntax()
            default:
                SectionView(title: "Unavailable", content: "Syntax reference for \(language.name) is not available.")
            }
        }
        .padding()
        .navigationTitle("\(language.name) Syntax")
    }
}


// MARK: - Swift
import SwiftUI

struct swiftSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Swift Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Section
                SectionView(
                    title: "Basic Swift Syntax",
                    content: """
Swift is a powerful and intuitive programming language. The syntax is easy to follow and supports modern programming paradigms.
"""
                )

                Group {
                    SectionView(
                        title: "Variable",
                        content: """
A named container for data that can change.
EXAMPLE: var age = 30
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A value that cannot be changed after being set.
EXAMPLE: let name = "John Doe"
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
Reusable block of code that performs a task.
EXAMPLE:
func greet(name: String) -> String {
    return "Hello, \\(name)!"
}
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes code based on a condition.
EXAMPLE:
if age >= 18 {
    print("Adult")
} else {
    print("Minor")
}
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Repeats code a fixed number of times.
EXAMPLE:
for i in 1...5 {
    print(i)
}
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Repeats code while a condition is true.
EXAMPLE:
while age < 100 {
    age += 1
}
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
Stores an ordered collection of values.
EXAMPLE: let numbers = [1, 2, 3, 4, 5]
"""
                    )

                    SectionView(
                        title: "Dictionary",
                        content: """
Stores key-value pairs.
EXAMPLE: let person = ["name": "John", "age": 30]
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
Blueprint for creating reference-type objects.
EXAMPLE:
class Car {
    var make: String
    var model: String
    init(make: String, model: String) {
        self.make = make
        self.model = model
    }
}
"""
                    )

                    SectionView(
                        title: "Struct",
                        content: """
A value-type container for data and behavior.
EXAMPLE:
struct Point {
    var x: Int
    var y: Int
}
"""
                    )

                    SectionView(
                        title: "Closure",
                        content: """
Inline block of reusable functionality.
EXAMPLE:
let multiply = { (a: Int, b: Int) -> Int in
    return a * b
}
"""
                    )

                    SectionView(
                        title: "Error Handling",
                        content: """
Manages unexpected conditions during execution.
EXAMPLE:
enum NetworkError: Error {
    case notFound
    case unauthorized
}

func fetchData() throws {
    throw NetworkError.notFound
}
"""
                    )
                }

                Divider()
                    .padding(.vertical)

                // Backend Section
                SectionView(
                    title: "Backend Programming (Server-Side Swift)",
                    content: """
Swift can be used for backend development with frameworks like Vapor, making it easy to build web applications, APIs, and services.
"""
                )

                Group {
                    SectionView(
                        title: "Async/Await",
                        content: """
Performs asynchronous programming with structured concurrency.
EXAMPLE:
func fetchData() async -> String {
    return "Data fetched!"
}

Task {
    let result = await fetchData()
    print(result)
}
"""
                    )

                    SectionView(
                        title: "Networking with URLSession",
                        content: """
Performs HTTP requests and network communication.
EXAMPLE:
func fetchDataFromAPI() {
    guard let url = URL(string: "https://api.example.com/data") else { return }
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            print("Data received: \\(data)")
        }
    }
    task.resume()
}
"""
                    )

                    SectionView(
                        title: "Vapor Routing",
                        content: """
Defines HTTP routes in a Vapor application.
EXAMPLE:
import Vapor

func routes(_ app: Application) throws {
    app.get("hello") { req in
        return "Hello, Vapor!"
    }
}
"""
                    )

                    SectionView(
                        title: "Model Definition with Fluent",
                        content: """
Maps data models to database tables using ORM.
EXAMPLE:
final class User: Model, Content {
    static let schema = "users"

    @ID(key: .id) var id: UUID?
    @Field(key: "name") var name: String
    @Field(key: "email") var email: String

    init() { }

    init(id: UUID? = nil, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}
"""
                    )

                    SectionView(
                        title: "WebSocket Communication",
                        content: """
Enables real-time two-way server-client communication.
EXAMPLE:
func websocketExample(req: Request) -> EventLoopFuture<Void> {
    return req.webSocket { socket in
        socket.onText { _, text in
            print("Received text: \\(text)")
            socket.send("Echo: \\(text)")
        }
    }
}
"""
                    )

                    SectionView(
                        title: "File Handling",
                        content: """
Reads and writes files using FileManager.
EXAMPLE:
let fileURL = FileManager.default.temporaryDirectory.appendingPathComponent("example.txt")
try "Hello, Swift!".write(to: fileURL, atomically: true, encoding: .utf8)

let fileContents = try String(contentsOf: fileURL, encoding: .utf8)
print(fileContents)
"""
                    )

                    SectionView(
                        title: "Authentication with Vapor",
                        content: """
Protects routes using authentication middleware.
EXAMPLE:
app.get("secure") { req -> String in
    let user = try req.auth.require(User.self)
    return "Authenticated User: \\(user.name)"
}
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct swiftSyntax_Previews: PreviewProvider {
    static var previews: some View {
        swiftSyntax()
    }
}



// MARK: - Python
import SwiftUI

struct pythonSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Python Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic Python Syntax",
                        content: """
Python is a high-level, dynamically typed language known for its simplicity and readability. It supports object-oriented, procedural, and functional programming paradigms.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A named reference to a value that can change over time.
EXAMPLE: age = 30
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A value intended to remain unchanged, often written in uppercase (Python has no native constant keyword).
EXAMPLE: PI = 3.14
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
Reusable block of code defined using the def keyword.
EXAMPLE: def greet(name): return f"Hello, {name}"
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Conditional logic used to execute code based on a Boolean condition.
EXAMPLE: if age >= 18: print("Adult")
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Iterates over a sequence like a list, tuple, or range.
EXAMPLE: for i in range(5): print(i)
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Executes code repeatedly while a condition is true.
EXAMPLE: while age < 100: age += 1
"""
                    )

                    SectionView(
                        title: "List",
                        content: """
An ordered, mutable collection of items.
EXAMPLE: numbers = [1, 2, 3, 4, 5]
"""
                    )

                    SectionView(
                        title: "Dictionary",
                        content: """
Unordered collection of key-value pairs.
EXAMPLE: person = {"name": "John", "age": 30}
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
Defines a blueprint for creating objects with attributes and methods.
EXAMPLE: class Car: def __init__(self, make): self.make = make
"""
                    )

                    SectionView(
                        title: "Lambda",
                        content: """
An anonymous, one-line function.
EXAMPLE: square = lambda x: x * x
"""
                    )

                    SectionView(
                        title: "Error Handling",
                        content: """
Manages exceptions using try-except blocks.
EXAMPLE: try: 1/0 except ZeroDivisionError: print("Error")
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (Server-Side Python)",
                        content: """
Python is widely used in backend development, particularly with frameworks like Flask and Django to build APIs, handle requests, and serve web content.
"""
                    )

                    SectionView(
                        title: "Async/Await",
                        content: """
Allows asynchronous programming using async def and await.
EXAMPLE: async def fetch(): return await get_data()
"""
                    )

                    SectionView(
                        title: "HTTP Request with Requests",
                        content: """
Sends HTTP requests using the requests library.
EXAMPLE: import requests; r = requests.get("https://example.com")
"""
                    )

                    SectionView(
                        title: "Flask Route",
                        content: """
Defines HTTP endpoints using decorators.
EXAMPLE: @app.route("/") def home(): return "Hello"
"""
                    )

                    SectionView(
                        title: "Django Model",
                        content: """
Defines database models using Django ORM.
EXAMPLE: class User(models.Model): name = models.CharField(max_length=100)
"""
                    )

                    SectionView(
                        title: "WebSocket with FastAPI",
                        content: """
Real-time communication with WebSocket endpoints.
EXAMPLE: @app.websocket("/ws") async def ws(websocket): await websocket.accept()
"""
                    )

                    SectionView(
                        title: "File Handling",
                        content: """
Reads from and writes to files using built-in functions.
EXAMPLE: with open("file.txt", "r") as f: print(f.read())
"""
                    )

                    SectionView(
                        title: "Authentication with Flask",
                        content: """
Handles login sessions or JWT tokens for protected routes.
EXAMPLE: @login_required def dashboard(): return "Protected"
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct PythonSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        pythonSyntax()
    }
}



// MARK: - Java
import SwiftUI

struct javaSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Java Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic Java Syntax",
                        content: """
Java is a statically typed, object-oriented programming language. It emphasizes readability, portability, and robustness.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A named location in memory to store a value that can change.
EXAMPLE: int age = 30;
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A value declared with the final keyword that cannot be reassigned.
EXAMPLE: final String NAME = "John Doe";
"""
                    )

                    SectionView(
                        title: "Function (Method)",
                        content: """
A reusable block of code defined inside a class that performs a task.
EXAMPLE: public String greet(String name) { return "Hello, " + name; }
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes code conditionally based on a Boolean expression.
EXAMPLE: if (age >= 18) { System.out.println("Adult"); }
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Repeats code a specific number of times using an index.
EXAMPLE: for (int i = 0; i < 5; i++) { System.out.println(i); }
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Repeats code while a condition is true.
EXAMPLE: while (age < 100) { age++; }
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
A fixed-size container that holds elements of the same type.
EXAMPLE: int[] numbers = {1, 2, 3, 4, 5};
"""
                    )

                    SectionView(
                        title: "HashMap",
                        content: """
Stores key-value pairs with fast lookup.
EXAMPLE: HashMap<String, Integer> map = new HashMap<>();
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
A blueprint for creating objects with fields and methods.
EXAMPLE: class Car { String make; Car(String make) { this.make = make; } }
"""
                    )

                    SectionView(
                        title: "Lambda",
                        content: """
A short syntax to implement functional interfaces.
EXAMPLE: (a, b) -> a + b
"""
                    )

                    SectionView(
                        title: "Exception Handling",
                        content: """
Manages errors using try-catch blocks.
EXAMPLE: try { int x = 1 / 0; } catch (ArithmeticException e) { }
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (Server-Side Java)",
                        content: """
Java is commonly used for backend development using frameworks like Spring and Jakarta EE to build scalable APIs and web applications.
"""
                    )

                    SectionView(
                        title: "Async with CompletableFuture",
                        content: """
Enables asynchronous computations and callbacks.
EXAMPLE: CompletableFuture.supplyAsync(() -> "Done").thenAccept(System.out::println);
"""
                    )

                    SectionView(
                        title: "HTTP Request with HttpClient",
                        content: """
Sends HTTP requests using Java’s HttpClient API.
EXAMPLE: HttpClient client = HttpClient.newHttpClient();
"""
                    )

                    SectionView(
                        title: "Spring Boot Controller",
                        content: """
Defines REST API endpoints using annotations.
EXAMPLE: @GetMapping("/") public String home() { return "Hello"; }
"""
                    )

                    SectionView(
                        title: "JPA Entity",
                        content: """
Defines database tables with Java Persistence API.
EXAMPLE: @Entity class User { @Id Long id; String name; }
"""
                    )

                    SectionView(
                        title: "WebSocket with Spring",
                        content: """
Supports real-time communication via WebSockets.
EXAMPLE: @MessageMapping("/send") public void send(String msg) { }
"""
                    )

                    SectionView(
                        title: "File Handling",
                        content: """
Reads and writes files using classes from java.io or java.nio.
EXAMPLE: Files.writeString(path, "Hello Java");
"""
                    )

                    SectionView(
                        title: "Authentication with Spring Security",
                        content: """
Secures endpoints using Spring Security’s filters and annotations.
EXAMPLE: @PreAuthorize("hasRole('USER')") public String dashboard() { return "Secured"; }
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct JavaSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        javaSyntax()
    }
}




// MARK: - C
import SwiftUI

struct cSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("C Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic C Syntax",
                        content: """
C is a procedural, low-level programming language known for its performance and control over system resources.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A memory location that stores data and can change during execution.
EXAMPLE: int age = 30;
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A fixed value defined with #define or the const keyword.
EXAMPLE: const char* name = "John Doe";
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
A block of code that performs a specific task and can be reused.
EXAMPLE: int add(int a, int b) { return a + b; }
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes a block of code based on a condition.
EXAMPLE: if (age >= 18) { printf("Adult"); }
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Repeats code for a defined number of times.
EXAMPLE: for (int i = 0; i < 5; i++) { printf("%d", i); }
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Repeats code while the condition is true.
EXAMPLE: while (age < 100) { age++; }
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
A fixed-size collection of elements of the same type.
EXAMPLE: int numbers[] = {1, 2, 3, 4, 5};
"""
                    )

                    SectionView(
                        title: "Struct",
                        content: """
A user-defined data type that groups related variables.
EXAMPLE: struct Point { int x; int y; };
"""
                    )

                    SectionView(
                        title: "Pointer",
                        content: """
A variable that stores the address of another variable.
EXAMPLE: int* ptr = &age;
"""
                    )

                    SectionView(
                        title: "Macro",
                        content: """
A preprocessor directive used for constant or inline functions.
EXAMPLE: #define PI 3.14
"""
                    )

                    SectionView(
                        title: "Error Handling (Return Codes)",
                        content: """
C handles errors through return values and errno.
EXAMPLE: if (fopen("file.txt", "r") == NULL) { perror("Error"); }
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (System-Level C)",
                        content: """
C is widely used in backend and system-level development, including OS kernels, embedded systems, and network servers.
"""
                    )

                    SectionView(
                        title: "Multithreading with pthreads",
                        content: """
Used to create and manage threads in POSIX systems.
EXAMPLE: pthread_create(&thread, NULL, myFunction, NULL);
"""
                    )

                    SectionView(
                        title: "Socket Programming",
                        content: """
Enables low-level networking using the sockets API.
EXAMPLE: socket(AF_INET, SOCK_STREAM, 0);
"""
                    )

                    SectionView(
                        title: "HTTP Server with libmicrohttpd",
                        content: """
A small C library to embed HTTP servers.
EXAMPLE: MHD_start_daemon(...);
"""
                    )

                    SectionView(
                        title: "File I/O with stdio.h",
                        content: """
Handles reading from and writing to files.
EXAMPLE: FILE* f = fopen("data.txt", "r");
"""
                    )

                    SectionView(
                        title: "Memory Management",
                        content: """
Manually allocates and frees memory with malloc/free.
EXAMPLE: int* p = malloc(sizeof(int)); free(p);
"""
                    )

                    SectionView(
                        title: "Signal Handling",
                        content: """
Manages interrupts and signals in Unix-like systems.
EXAMPLE: signal(SIGINT, handleInterrupt);
"""
                    )

                    SectionView(
                        title: "Authentication (Custom Logic)",
                        content: """
Implements basic auth logic using structs and conditions.
EXAMPLE: if (strcmp(input, password) == 0) { access_granted(); }
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct CSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        cSyntax()
    }
}


// MARK: - C++
import SwiftUI

struct cppSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("C++ Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic C++ Syntax",
                        content: """
C++ is a powerful, object-oriented programming language often used for system/software development and high-performance applications.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A named storage location for data that can change during program execution.
EXAMPLE: int age = 30;
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A value that cannot be modified after its definition.
EXAMPLE: const std::string name = "John Doe";
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
A reusable block of code that performs a specific task.
EXAMPLE: int add(int a, int b) { return a + b; }
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Performs conditional execution based on a Boolean expression.
EXAMPLE: if (age >= 18) { std::cout << "Adult"; }
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Repeats a block of code for a fixed number of times.
EXAMPLE: for (int i = 0; i < 5; i++) { std::cout << i; }
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Executes a block repeatedly while a condition is true.
EXAMPLE: while (age < 100) { age++; }
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
A fixed-size container that holds elements of the same type.
EXAMPLE: int numbers[] = {1, 2, 3, 4, 5};
"""
                    )

                    SectionView(
                        title: "Vector",
                        content: """
A dynamic array from the Standard Template Library (STL).
EXAMPLE: std::vector<int> numbers = {1, 2, 3};
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
An object-oriented structure that encapsulates data and methods.
EXAMPLE:
class Car {
public:
    std::string make;
    Car(std::string m) : make(m) {}
};
"""
                    )

                    SectionView(
                        title: "Pointer",
                        content: """
Stores the address of another variable.
EXAMPLE: int* ptr = &age;
"""
                    )

                    SectionView(
                        title: "Exception Handling",
                        content: """
Used to catch and handle runtime errors.
EXAMPLE:
try {
    throw std::runtime_error("Error");
} catch (std::exception& e) {
    std::cout << e.what();
}
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (C++ Server-Side)",
                        content: """
C++ is widely used for backend development in high-performance systems, including game engines, finance, and real-time applications.
"""
                    )

                    SectionView(
                        title: "Multithreading with std::thread",
                        content: """
Supports concurrent execution using threads.
EXAMPLE:
std::thread t([](){ std::cout << "Hello"; });
t.join();
"""
                    )

                    SectionView(
                        title: "Networking with Boost.Asio",
                        content: """
Used for asynchronous TCP/IP socket programming.
EXAMPLE: boost::asio::ip::tcp::socket socket(io_context);
"""
                    )

                    SectionView(
                        title: "Web Server with Crow",
                        content: """
Crow is a C++ microframework for building web APIs.
EXAMPLE:
CROW_ROUTE(app, "/")([](){ return "Hello, Crow!"; });
"""
                    )

                    SectionView(
                        title: "File I/O with fstream",
                        content: """
Reads and writes files using the fstream library.
EXAMPLE:
std::ofstream out("file.txt");
out << "Hello"; out.close();
"""
                    )

                    SectionView(
                        title: "Smart Pointers",
                        content: """
Manage memory automatically with ownership semantics.
EXAMPLE: std::unique_ptr<int> p = std::make_unique<int>(5);
"""
                    )

                    SectionView(
                        title: "Signal Handling",
                        content: """
Handles OS-level signals such as SIGINT.
EXAMPLE:
signal(SIGINT, [](int s){ std::cout << "Interrupted"; });
"""
                    )

                    SectionView(
                        title: "Authentication Logic",
                        content: """
Implements basic logic with classes and conditionals.
EXAMPLE:
if (input == password) { grantAccess(); }
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct CPPSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        cppSyntax()
    }
}


// MARK: - Ruby
import SwiftUI

struct rubySyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("Ruby Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic Ruby Syntax",
                        content: """
Ruby is a dynamic, object-oriented language known for its readability and simplicity, often used in web development.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A placeholder for a changeable value.
EXAMPLE: age = 30
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
An identifier whose value should not change.
EXAMPLE: NAME = "John Doe"
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
A method that encapsulates reusable logic.
EXAMPLE:
def greet(name)
  "Hello, #{name}"
end
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes code conditionally based on truthiness.
EXAMPLE:
if age >= 18
  puts "Adult"
else
  puts "Minor"
end
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Iterates over a range of values.
EXAMPLE:
for i in 1..5
  puts i
end
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Repeats while a condition remains true.
EXAMPLE:
while age < 100
  age += 1
end
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
An ordered list of elements.
EXAMPLE: numbers = [1, 2, 3, 4, 5]
"""
                    )

                    SectionView(
                        title: "Hash",
                        content: """
A collection of key-value pairs.
EXAMPLE: person = { name: "John", age: 30 }
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
Defines a blueprint for creating objects.
EXAMPLE:
class Car
  def initialize(make)
    @make = make
  end
end
"""
                    )

                    SectionView(
                        title: "Block",
                        content: """
An anonymous chunk of code passed to methods.
EXAMPLE:
[1, 2, 3].each { |n| puts n }
"""
                    )

                    SectionView(
                        title: "Exception Handling",
                        content: """
Captures and manages runtime errors.
EXAMPLE:
begin
  raise "Oops!"
rescue => e
  puts e.message
end
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (Ruby on Rails)",
                        content: """
Ruby is widely used in backend development with the Ruby on Rails framework for building full-featured web apps.
"""
                    )

                    SectionView(
                        title: "Controller Action",
                        content: """
Defines actions to respond to HTTP requests.
EXAMPLE:
def show
  @user = User.find(params[:id])
end
"""
                    )

                    SectionView(
                        title: "Routing",
                        content: """
Maps URLs to controller actions.
EXAMPLE:
get "/users/:id", to: "users#show"
"""
                    )

                    SectionView(
                        title: "Model with ActiveRecord",
                        content: """
Maps database tables to Ruby objects.
EXAMPLE:
class User < ApplicationRecord
end
"""
                    )

                    SectionView(
                        title: "Migration",
                        content: """
Modifies the structure of a database.
EXAMPLE:
create_table :users do |t|
  t.string :name
  t.timestamps
end
"""
                    )

                    SectionView(
                        title: "Database Query",
                        content: """
Fetches data using ActiveRecord methods.
EXAMPLE: User.where(age: 30)
"""
                    )

                    SectionView(
                        title: "JSON API Response",
                        content: """
Returns JSON data from controllers.
EXAMPLE: render json: @user
"""
                    )

                    SectionView(
                        title: "Environment Variables",
                        content: """
Stores app secrets and configs securely.
EXAMPLE: ENV["API_KEY"]
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct RubySyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        rubySyntax()
    }
}


// MARK: - JavaScript
import SwiftUI

struct javascriptSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("JavaScript Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic JavaScript Syntax",
                        content: """
JavaScript is a versatile, high-level programming language primarily used to create interactive elements on web pages.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A named container for data that can change during execution.
EXAMPLE: let age = 30;
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A value that cannot be reassigned once set.
EXAMPLE: const name = "John Doe";
"""
                    )

                    SectionView(
                        title: "Function",
                        content: """
A reusable block of code that performs a task.
EXAMPLE: function greet(name) { return `Hello, ${name}`; }
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes code based on a condition.
EXAMPLE: if (age >= 18) { console.log("Adult"); }
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Executes code a fixed number of times.
EXAMPLE: for (let i = 0; i < 5; i++) { console.log(i); }
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Repeats code while a condition is true.
EXAMPLE: while (age < 100) { age++; }
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
Stores ordered collections of data.
EXAMPLE: let numbers = [1, 2, 3, 4, 5];
"""
                    )

                    SectionView(
                        title: "Object",
                        content: """
Stores data in key-value pairs.
EXAMPLE: let person = { name: "John", age: 30 };
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
Defines blueprints for creating objects.
EXAMPLE:
class Car {
    constructor(make) {
        this.make = make;
    }
}
"""
                    )

                    SectionView(
                        title: "Arrow Function",
                        content: """
A shorter syntax for writing functions.
EXAMPLE: const add = (a, b) => a + b;
"""
                    )

                    SectionView(
                        title: "Try/Catch",
                        content: """
Handles exceptions during execution.
EXAMPLE:
try {
    throw new Error("Oops!");
} catch (e) {
    console.error(e.message);
}
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (Node.js)",
                        content: """
JavaScript can be used for backend development with Node.js to build scalable network applications and APIs.
"""
                    )

                    SectionView(
                        title: "Asynchronous Code with Async/Await",
                        content: """
Handles asynchronous operations in a readable way.
EXAMPLE:
async function fetchData() {
    return "Data fetched!";
}

fetchData().then(console.log);
"""
                    )

                    SectionView(
                        title: "HTTP Server with Express",
                        content: """
Creates a web server using Express.js framework.
EXAMPLE:
const express = require("express");
const app = express();
app.get("/", (req, res) => res.send("Hello"));
"""
                    )

                    SectionView(
                        title: "Database Query with Mongoose",
                        content: """
Interacts with MongoDB using object modeling.
EXAMPLE:
User.find({}, (err, users) => {
    if (err) throw err;
    console.log(users);
});
"""
                    )

                    SectionView(
                        title: "File System Operations",
                        content: """
Reads and writes files using Node's fs module.
EXAMPLE:
const fs = require("fs");
fs.writeFileSync("file.txt", "Hello JS!");
"""
                    )

                    SectionView(
                        title: "WebSocket Communication",
                        content: """
Enables real-time communication with WebSocket.
EXAMPLE:
io.on("connection", socket => {
    socket.on("msg", msg => socket.send("Echo: " + msg));
});
"""
                    )

                    SectionView(
                        title: "Authentication with JWT",
                        content: """
Secures APIs using JSON Web Tokens.
EXAMPLE:
const token = jwt.sign({ user }, "secret", { expiresIn: "1h" });
"""
                    )

                    SectionView(
                        title: "Environment Variables",
                        content: """
Uses environment-specific values with dotenv.
EXAMPLE:
require("dotenv").config();
const db = process.env.DB_URL;
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct JavaScriptSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        javascriptSyntax()
    }
}


// MARK: - c#
import SwiftUI

struct csharpSyntax: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Text("C# Syntax: Frontend & Backend")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                // Frontend Syntax
                Group {
                    SectionView(
                        title: "Basic C# Syntax",
                        content: """
C# is a modern, object-oriented language developed by Microsoft. It is used for developing a wide range of applications, including web and desktop apps.
"""
                    )

                    SectionView(
                        title: "Variable",
                        content: """
A named storage location that can hold a value.
EXAMPLE: int age = 30;
"""
                    )

                    SectionView(
                        title: "Constant",
                        content: """
A variable whose value cannot be changed.
EXAMPLE: const string name = "John Doe";
"""
                    )

                    SectionView(
                        title: "Method",
                        content: """
A block of code that performs a specific task.
EXAMPLE:
public string Greet(string name)
{
    return $"Hello, {name}!";
}
"""
                    )

                    SectionView(
                        title: "If Statement",
                        content: """
Executes code based on a condition.
EXAMPLE:
if (age >= 18)
{
    Console.WriteLine("Adult");
}
else
{
    Console.WriteLine("Minor");
}
"""
                    )

                    SectionView(
                        title: "For Loop",
                        content: """
Repeats a block of code for a specified number of times.
EXAMPLE:
for (int i = 0; i < 5; i++)
{
    Console.WriteLine(i);
}
"""
                    )

                    SectionView(
                        title: "While Loop",
                        content: """
Executes a block of code as long as the condition is true.
EXAMPLE:
while (age < 100)
{
    age++;
}
"""
                    )

                    SectionView(
                        title: "Array",
                        content: """
A collection of items stored at contiguous memory locations.
EXAMPLE: int[] numbers = {1, 2, 3, 4, 5};
"""
                    )

                    SectionView(
                        title: "Dictionary",
                        content: """
A collection of key-value pairs.
EXAMPLE: var person = new Dictionary<string, string> { { "name", "John" }, { "age", "30" } };
"""
                    )

                    SectionView(
                        title: "Class",
                        content: """
Defines a blueprint for objects.
EXAMPLE:
public class Car
{
    public string Make { get; set; }
    public string Model { get; set; }

    public Car(string make, string model)
    {
        Make = make;
        Model = model;
    }
}
"""
                    )

                    SectionView(
                        title: "Delegate",
                        content: """
A type that references methods with a specific parameter list and return type.
EXAMPLE:
public delegate int AddDelegate(int a, int b);
AddDelegate add = (a, b) => a + b;
"""
                    )

                    SectionView(
                        title: "Exception Handling",
                        content: """
Handles runtime errors.
EXAMPLE:
try
{
    int result = 10 / 0;
}
catch (DivideByZeroException e)
{
    Console.WriteLine(e.Message);
}
"""
                    )
                }

                Divider()

                // Backend Syntax
                Group {
                    SectionView(
                        title: "Backend Programming (ASP.NET Core)",
                        content: """
C# is extensively used in backend programming with frameworks like ASP.NET Core, which is popular for building web APIs and services.
"""
                    )

                    SectionView(
                        title: "Routing in ASP.NET Core",
                        content: """
Maps HTTP requests to controller actions.
EXAMPLE:
app.MapGet("/hello", () => "Hello, World!");
"""
                    )

                    SectionView(
                        title: "Controller Action",
                        content: """
Defines a method to handle incoming HTTP requests.
EXAMPLE:
public class HelloController : ControllerBase
{
    [HttpGet("hello")]
    public IActionResult Get()
    {
        return Ok("Hello, World!");
    }
}
"""
                    )

                    SectionView(
                        title: "Model Binding",
                        content: """
Maps incoming data to method parameters.
EXAMPLE:
public class User
{
    public string Name { get; set; }
}

[HttpPost]
public IActionResult CreateUser([FromBody] User user)
{
    return Ok(user);
}
"""
                    )

                    SectionView(
                        title: "Entity Framework Core",
                        content: """
An ORM that helps in working with databases using C#.
EXAMPLE:
public class ApplicationContext : DbContext
{
    public DbSet<User> Users { get; set; }
}
"""
                    )

                    SectionView(
                        title: "Async/Await",
                        content: """
Helps with asynchronous programming.
EXAMPLE:
public async Task<IActionResult> GetDataAsync()
{
    var data = await _service.GetDataAsync();
    return Ok(data);
}
"""
                    )

                    SectionView(
                        title: "JWT Authentication",
                        content: """
Secures web APIs with token-based authentication.
EXAMPLE:
public void ConfigureServices(IServiceCollection services)
{
    services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            .AddJwtBearer(options =>
            {
                options.Authority = "https://example.com";
                options.Audience = "api";
            });
}
"""
                    )

                    SectionView(
                        title: "File Upload",
                        content: """
Handles file uploads in web applications.
EXAMPLE:
[HttpPost("upload")]
public async Task<IActionResult> UploadFile(IFormFile file)
{
    var path = Path.Combine(Directory.GetCurrentDirectory(), "uploads", file.FileName);
    using (var stream = new FileStream(path, FileMode.Create))
    {
        await file.CopyToAsync(stream);
    }
    return Ok("File uploaded!");
}
"""
                    )

                    SectionView(
                        title: "WebSocket Communication",
                        content: """
Enables real-time communication between client and server.
EXAMPLE:
app.UseWebSockets();
app.Map("/ws", (WebSocket socket) =>
{
    var buffer = new byte[1024];
    socket.ReceiveAsync(new ArraySegment<byte>(buffer), CancellationToken.None);
});
"""
                    )
                }
            }
            .padding()
        }
    }
}

struct CSharpSyntaxView_Previews: PreviewProvider {
    static var previews: some View {
        csharpSyntax()
    }
}
