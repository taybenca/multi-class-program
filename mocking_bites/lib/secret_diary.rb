class SecretDiary
    def initialize(diary)
      @is_it_lock = true
      @diary = diary
    end
  
    def read
      return @diary if @is_it_lock == false
      fail "Go away!" if @is_it_lock == true
    end
  
    def lock
      @is_it_lock = true
    end
  
    def unlock
      @is_it_lock = false
    end
end