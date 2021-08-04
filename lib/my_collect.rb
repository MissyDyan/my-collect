require 'pry'

def my_collect(languages)
    if block_given?
        counter = 0
        collection = []
        while counter < languages.length
            collection << yield(languages[counter])
            counter += 1
        end
        collection
    end
end