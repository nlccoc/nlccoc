class Mgmt < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :timeout_in => 90.minutes
  #attr_accessible :last_sign_in_at
  
  belongs_to :role
  
  before_create :set_default_role
  # or 
  # before_validation :set_default_role 

  def is_admin?
    self.role.name =='admin' ? true : false
  end
  
  def is_office?
    self.role.name =='office' ? true : false
  end
  
  def is_media?
    self.role.name == 'sound' ? true : false
  end
  
  def is_unapproved?
    self.role.name=='unapproved' ? true: false
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
