module Findable

  module ClassMethod

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

  end

  module InstanceMethod

    def to_param
      self.name.downcase.gsub(' ', '-')
    end

  end

end
