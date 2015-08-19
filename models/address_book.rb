require_relative "entry.rb"

class AddressBook
  attr_accessor :entries
  def initialize
    @entries = []
  end
  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end
  # @entries == [entry2, entry1, entry3]
  # entry1 == <%Entry:43729473289 name: 'Ben', phone: '1234445555', email: 'email@email.com' %>
  def remove_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name ==  entry.name  && phone == entry.phone_number && email == entry.email
        @entries.delete_at(index)
        break
      end
      index += 1
    end
  end
end
