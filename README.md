# Binary Search Tree
[![Build Status](https://travis-ci.org/munjeli/binary-search-tree.svg?branch=master)](https://travis-ci.org/munjeli/binary-search-tree)

This is a simple implmentation of a network topology modelled by a binary search tree where nodes represent physical nodes and a Controller manages the nodes from the root. No two nodes can have the same name or weight. Names are strings and weights are integers.

# Installation

To run the code you'll need Ruby version 2.3.0\. A environment manager is highly recommended: I prefer [rbenv](https://github.com/rbenv/rbenv) with [ruby-build](https://github.com/rbenv/ruby-build). Using an environment manager makes it easy to install different versions of Ruby and experiment with many projects without conflict.

After installing Ruby, `git clone` this repository or download the zip package and extract the project.

For dependency management, this project uses [bundler](http://bundler.io). You can install it as a gem with `gem install bundler`.

`cd` into the project folder and run `bundle` to download and install the required dependencies.

# API Reference

The easiest way to explore Ruby classes on the command line is with a REPL, like irb or the wonderful [pry](http://pryrepl.org/) which can be installed as a gem. Start irb in a terminal:

```ruby
irb
```

Then require the Node and Controller classes:

    ```ruby
    require_relative "/home/$USER/binary-search-tree/lib/controller"
    ```

...if the binary-search-tree project is in your home directory. You don't need to require Node as it is already required by the Controller.

Make a new Node, and use it to create a Controller:

    ```ruby
    root_node = Node.new('pickles', 17)
    controller = Controller.new(root_node)
    ```

In this example, we create a controller with a root node named `pickles` with a weight of `17`.  

Once you have a controller, you can insert new nodes with name and weight arguments:

    ```ruby
    controller.insert('gherkin', 16)
    ```

Now we've made a left node for the tree. Insert some more nodes and you'll see the tree grow in irb.

The print_ordered_names method will return the names of the nodes in the tree sorted by weight from least to greatest in a space delimited string:

    ```ruby
    controller.print_ordered_names
    ```

will return `"gherkin pickles "`

# Tests

Tests for this project are written with [rspec](http://rspec.info/) The Rspec gem will install with Bundler. Just run `rspec` from the root of the project folder and you'll see the tests run for the Node and Controller classes.

# Contributors

1. Fork ([https://github.com/munjeli/binary-search-tree/fork](https://github.com/munjeli/binary-search-tree/fork))
1. Create a feature branch
1. Commit your changes
1. Rebase your local changes against the master branch
1. Run the test suite with the `rspec` command and confirm that it passes
1. Create a new Pull Request

# License

Apache 2.0
