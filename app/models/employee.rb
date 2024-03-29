class Employee < ActiveRecord::Base  

  attr_accessible :department, :ext, :email, :name, :password, :password_confirmation, :admin_flag

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :comments
  has_many :teamizations
  has_many :projects, :through => :teamizations
  has_many :rfizations
  has_many :rfis, :through => :prjects

  def self.authenticate(email, password)
  	employee = find_by_email(email.downcase)
  	if employee && employee.password_hash == BCrypt::Engine.hash_secret(password, employee.password_salt)
  		employee
  	else
  		nil
  	end
  end

  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt) 		
  	end
  end
end
