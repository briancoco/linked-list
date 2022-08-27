class LinkedList
    attr_accessor :head

    def append(value)
        #if first element, set as head node
        if head == nil
            self.head = Node.new(value)
        else
            tail = tail()
            tail.next_node = Node.new(value)
        end
    end

    def prepend(value)
        temp = Node.new(value, head)
        self.head = temp

    end

    def tail(node = head)
        if node.next_node == nil
            return node
        else
            return tail(node.next_node)
        end
    end

    def at(index)
        i = 0
        curr = head
        until i == index do
            curr = curr.next_node
            i += 1
        end
        curr.value
    end

    def pop()
        curr = head
        prev = ''

        until curr == tail() do
            prev = curr
            curr = curr.next_node
        end
        prev.next_node = nil
    end

    def contains?(value)
        curr = head
        until curr == nil do
            if curr.value == value
                return true
            end
            curr = curr.next_node
        end
        return false
    end

    def find(value)
        curr = head
        index = 0
        until curr == nil do
            if curr.value == value
                return index
            end
            curr = curr.next_node
            index += 1
        end
        return nil
    end

    def to_s(curr = head)
        if curr.next_node == nil
            return curr.value
        end
        until curr == nil do
            if curr != head
                print " => "
            end

            print "#{curr.value}"
            curr = curr.next_node
        end
        
    end
end

class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end


end
