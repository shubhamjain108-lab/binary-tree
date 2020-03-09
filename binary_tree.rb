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

        # print data in inorder form (left, root, right)
        def inorder(node)
            if node == nil
                return
            end
            inorder(node.left)
            puts "#{node.data}"
            inorder(node.right)
        end
        
        # print data in preorder form (root, left, right)
        def preorder(node)
            if node == nil
                return
            end
            puts "#{node.data}"            
            preorder(node.left)
            preorder(node.right)
        end

        # print data in postorder for (left, right, root)
        def postorder(node)
            if node == nil
                return
            end
            postorder(node.left)
            postorder(node.right)
            puts "#{node.data}"            
        end

        def test_binary_tree
            for i in 1..5 do
                BinaryTree::Node.new.insert(@@root, rand(100))
            end
            puts "inorder : "
            inorder(@@root)
            puts "preorder : "
            preorder(@@root)
            puts "postorder : "
            postorder(@@root)
        end

    end
end

BinaryTree::Node.new.test_binary_tree
