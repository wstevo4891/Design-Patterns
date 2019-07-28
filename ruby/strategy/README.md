
# Strategy Pattern

```ruby```
report = Report.new(HTMLFormatter.new)
report.output_report
```ruby```

The GoF call this “pull the algorithm out into a separate object” technique the Strategy pattern (Figure 4-1). The key idea underlying the Strategy pattern is to define a family of objects, the strategies, which all do the same thing — in our example, format the report. Not only does each strategy object perform the same job, but all of the objects support exactly the same interface.

The Strategy pattern has some real advantages. As we saw in the report example, we can achieve better separation of concerns by pulling out a set of strategies from a class. By using the Strategy pattern, we relieve the Report class of any responsibility for or knowledge of the report file format. In addition, because the Strategy pattern is based on composition and delegation, rather than on inheritance, it is easy to switch strategies at runtime.

```ruby```
report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report
```ruby```

You can look at a strategy as a lump of executable code that knows how to do something—format text, for example—and is wrapped up in an object. This should sound familiar because it is also a good description of a Proc—a chunk of code wrapped in an object.

## Wrapping Up

The Strategy pattern is a delegation-based approach to solving the same problem as the Template Method pattern. Instead of teasing out the variable parts of your algorithm and pushing them down into subclasses, you simply implement each version of your algorithm as a separate object. You can then vary the algorithm by supplying different strategy objects to the context—one strategy for producing HTML and a different one for outputting PDF files, for example, or perhaps one strategy for calculating Virginia taxes and a different one for computing Pennsylvania taxes.

We have a couple of choices regarding how we get the appropriate data from the context object over to the strategy object. We can pass all of the data as parameters as we call methods on the strategy object, or we can simply pass a reference to the whole context object to the strategy.

Ruby code blocks, which are essentially code wrapped up in an instant object (the Proc object), are wonderfully useful for creating quick, albeit simple, strategy objects.

Olsen, Russ. Design Patterns in Ruby (Addison-Wesley Professional Ruby Series) (p. 79 - 92). Pearson Education. Kindle Edition.
