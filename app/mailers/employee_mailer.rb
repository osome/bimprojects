class EmployeeMailer < ActionMailer::Base
  default from: "projects@mojaveelectric.com"

  def welcome_email(employee)
  	@employee = employee
  	@url = "http://projects.mojaveelectric.com/log_in"
  	mail(:to => employee.email, :subject => "Welcome to the Mojave project dashboard.")
  end

  def send_email_to_employee(employee, subject)
  	@employee = employee
  	@subject = subject
  	mail(:to =>employee.email, :subject => subject)
  end
end
