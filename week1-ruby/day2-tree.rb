# 7L7W Week 1 - Ruby: Day 2
# Tree class with extra goodness
# Will Green - http://flux.org.uk

class Tree
    attr_accessor:children, :node_name
    
    # should look at doing this with collect
    def initialize(name, children)  # expects children to be a hash of hashes
        @children = []
        if name.nil?  # get root from children
            @node_name = children.keys.first
            children = children.values.first
        else
            @node_name = name
        end
        unless children.nil?
            children.each_pair { |n, c| @children << Tree.new(n, c) }
        end
    end

    def visit_all(&block)
        visit &block
        @children.each { |c| c.visit_all &block }  # doesn't have @ in the book, still works without though
    end

    def visit(&block)
        block.call self
    end
end


# test data from book
test_tree_hash = {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {}, 'child 5' => {} }}}

test_tree = Tree.new(nil, test_tree_hash)
test_tree.visit_all { |node| puts node.node_name }

# test option of providing a manual root
test_tree2 = Tree.new('great-grandfather', test_tree_hash)
test_tree2.visit_all { |node| puts node.node_name }
