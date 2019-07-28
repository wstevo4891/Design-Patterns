
# Cost of Static Typing

From: Design Patterns in Ruby

Statically typed languages are so pervasive these days that a key question is rarely asked: What is the cost of static typing? My answer is that static typing costs a lot. In fact, in the currency of programming effort and code clutter, static typing costs a fortune.

Look at a Java or C# program and count the number of tokens devoted to parameter and variable declarations. Add in most of the interfaces. Don’t forget those pesky class casts, where you convince the typing system that, yes, that really is a String over there. Add a bonus for each complex generic declaration. All of this code clutter is not free.

And it is not just programming effort. There is a very real, albeit hidden cost to static typing: It tends to couple your system together much more tightly than necessary. Consider the following Java isEmpty() method:

```java```
public boolean isEmpty(String s)
{
    return s.length() == 0;
}
```java```

Now look at its Ruby twin:

```ruby```
def empty?(s)
  s.length == 0
end
```ruby```

On the surface, the two methods seem pretty much the same. Now consider that the Java version works only on arguments of type java.lang.String. The Ruby version will work on strings, to be sure—but it will also work with arrays, queues, sets, and hashes.

In fact, the Ruby empty? method will work with any argument that has a length method. It doesn’t care what the exact type of the argument is, and perhaps it should not.

The arguments for dynamic typing might sound counterintuitive to the statically typed ear. If you are used to static typing, in which you declare everything all the time, it might seem unrealistic to suppose that you can build large, reliable systems without strong type checking. But it is possible—and there are two very obvious examples that demonstrate just how possible it is.

Ruby on Rails is by far the most prominent evidence that you can write reliable code in a dynamically typed language. Rails consists of tens of thousands of lines of dynamically typed Ruby code, and Rails is rock stable. If Rails does not persuade you, think about that other large lump of Ruby code in constant use everyday: the standard library that comes with Ruby. The Ruby standard library consists of more than 100,000 lines of Ruby. It is nearly impossible to write a Ruby program that does not use the Ruby standard library—and it works.

Ruby on Rails and the Ruby standard library are the existence proof: You can write large bodies of reliable code in a dynamically typed language. The fear that dynamic typing will produce code chaos is mostly unfounded. Yes, type problems do occasionally cause Ruby programs to crash. But Ruby programs do not crash with anything like the frequency that you might expect given the lengths that statically typed languages go to in to avoid even the remote possibility of type errors.

Does this mean that dynamically typed languages are just better, and that we should give up on statically typed languages completely? The jury is still out on this question. As with most software engineering questions, the answer involves seeing the two options as a balance. Static typing is probably worth the price on large, complex systems built by huge teams. But dynamic typing has some significant advantages: Programs written in Ruby are generally a fraction of the size of their statically typed equivalents. And, as we saw with the empty? example and shall see in the chapters to come, dynamic typing offers a huge flexibility bonus. If all of this seems crazy to you, stick with me through the rest of this book, and give all of this dynamically typed insanity a chance. You may be pleasantly surprised.

Olsen, Russ. Design Patterns in Ruby (Addison-Wesley Professional Ruby Series) (p. 71). Pearson Education. Kindle Edition.
