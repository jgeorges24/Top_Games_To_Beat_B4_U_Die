
class Chuck_Jokes
    @@all = []
    #attr_accessor :id, :joke, :categories

     puts "this is the Chuck_Jokes class"
    # attr_accessor :id, :joke

    def initialize(jokes_data)
        jokes_data.each do |key, value|
            
            binding.pry
            self.class.attr_accessor(key)
            self.send(("#{key}="), value) #if self.attr_accessor.include?(key) <-- this code will be used to filter out the other categories if we needed them or not...
            #self.id=(value)
            #self.joke=(value)
            end
            
            @@all << self
        end



        def self.all
            @@all
        end


end