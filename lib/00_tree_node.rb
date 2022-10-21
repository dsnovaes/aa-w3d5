class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    # def inspect
    #     if @parent == nil
    #         the_parent = "nobody"
    #     else
    #         the_parent = @parent.value
    #     end
    #     "#{@value} is child of #{the_parent} and parent of #{@children}"
    # end

    def parent=(parent)
        @parent = parent
        if self.parent != nil
            old_parent = self.parent.children 

            # if the node is already child of other node
            idx = 0
            if old_parent.empty?
                old_parent.each_with_index do |ele,i|
                    if ele == self
                        idx = i
                        break
                    end
                end
                old_parent.delete_at(idx)
            end
        end

        if self.parent != nil && !parent.children.include?(self)
            parent.children << self 
        end

    end

end

# root = PolyTreeNode.new("a")
# child = PolyTreeNode.new("b")

# child.parent = root

# p child
# puts
# p root