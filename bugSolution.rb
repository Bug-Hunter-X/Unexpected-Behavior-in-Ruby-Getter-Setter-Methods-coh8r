```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    # Input validation: Ensure the new value meets your requirements
    unless new_value.is_a?(Numeric) && new_value >= 0
      raise ArgumentError, "Value must be a non-negative number" 
    end
    @value = new_value
  end
end

begin
  my_object = MyClass.new(10)
  puts my_object.value # Output: 10

  my_object.value = 20
  puts my_object.value # Output: 20

  my_object.value = -5 # This will raise an ArgumentError
  puts my_object.value 
rescue ArgumentError => e
  puts "Error: #{e.message}"
end
```