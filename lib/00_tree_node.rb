class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    def parent=(parent)
        if self.parent != nil
            old_parent = self.parent.children

            # if the node is already child of other node
            idx = 0
                old_parent.each_with_index do |ele,i|
                    if ele == self
                        idx = i
                        break
                    end
                end
                old_parent.delete_at(idx)
            end

        @parent = parent # assigning a parent to the node

        if self.parent != nil && !parent.children.include?(self)
            parent.children << self
        end
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        if children.include?(child_node)
            child_node.parent = nil
        else
            raise "not a child" 
        end
    end


    def dfs(target_value)

        stack = [self]
        # need to populate the stack

        # base case
        return nil if stack.empty? 

        # recursive steps


    end






end

# root = PolyTreeNode.new("a")
# child = PolyTreeNode.new("b")

# child.parent = root

# p child
# puts
# p root


root.dfs("f")

