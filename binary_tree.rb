module BinaryTree
    class Node
        attr_reader :data
        attr_accessor :left, :right
        @@root = nil
        def initialize(data=nil)
            @data = data
            @left = nil
            @right = nil
        end

        # insert data in binary tree node
        def insert(node, data)
            q = []
            if node == nil
                @@root = BinaryTree::Node.new(data)
                return
            end
            q.push(node)
            while (!q.empty?)
                node = q.shift
                if node.left == nil
                    node.left = BinaryTree::Node.new(data)
                    break
                else
                    q.push(node.left)
                end
                if node.right == nil
                    node.right = BinaryTree::Node.new(data)
                    break
                else
                    q.push(node.right)
                end
            end
        end

        def test_binary_tree
            BinaryTree::Node.new.insert(@@root, 10)
        end

    end
end

BinaryTree::Node.new.test_binary_tree
