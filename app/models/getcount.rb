# this function takes in an array and returns the item in the array that shows up the most times


def get_most(arr)
    frequency = {}

    arr.each do |x|
        if frequency[x]
            frequency[x] += 1
        else
            frequency[x] = 1
        end
    end

    most_frequent = frequency.max_by { |k,v| v }
    most_frequent[0]
end