class Vehicle
    attr_accessor :open_doors_count

    def initialize
        @open_doors_count = 0
    end

    def open_doors
        raise Exception, "No more doors to open" if @open_doors_count >= doors_count

        @open_doors_count += 1
    end

    def close_doors
        raise Exception, "No more doors to close" if @open_doors_count == 0
        
        @open_doors_count -= 1
    end
end

class PassengerCar < Vehicle
    def doors_count
        4
    end
end

class Coach < Vehicle
    def doors_count
        6
    end
end