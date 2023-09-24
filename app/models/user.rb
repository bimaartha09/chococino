class User < ApplicationRecord

  enum state: {
    inactive: 0,
    active: 1
  }

end
