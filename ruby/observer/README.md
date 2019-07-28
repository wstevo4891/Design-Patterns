
# Observer Pattern

The GoF called this idea of building a clean interface between the source of the news that some object has changed and the consumers of that news the Observer pattern (Figure 5-1). The GoF called the class with the news the subject class. In our example, the subject is the Employee class. The observers are the objects that are interested in getting the news. In our employee example, we have two observers: Payroll and TaxMan. When an object is interested in being informed of the state of the subject, it registers as an observer on that subject.

## Wrapping Up

The Observer pattern allows you to build components that know about the activities of other components without having to tightly couple everything together in an unmanageable mess of code-flavored spaghetti. By creating a clean interface between the source of the news (the observable object) and the consumer of that news (the observers), the Observer pattern moves the news without tangling things up.

Olsen, Russ. Design Patterns in Ruby (Addison-Wesley Professional Ruby Series) (p. 100 - 109). Pearson Education. Kindle Edition.
