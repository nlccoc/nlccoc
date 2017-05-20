class Mgmt < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :timeout_in => 15.minutes
  #attr_accessible :last_sign_in_at
  
  belongs_to :role
  
  before_create :set_default_role
  # or 
  # before_validation :set_default_role 

  def is_admin?
    if self.role.name=='admin'
      true
    else
      false
    end
  end
  
  def active_for_authentication?
    super
  end
  
  def inactive_message
  end
  
  private
    def set_default_role
      self.role ||= Role.find_by_name('unapproved')
    end
end
