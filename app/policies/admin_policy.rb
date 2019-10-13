class AdminPolicy < ApplicationPolicy

def new?
	user.Full_access?
end

def edit?
	user.Full_access?
end

def destroy?
	user.Full_access?
end

def permitted_attributes
	if user.Full_access?
		[:name, :email,:role,:password, :password_confirmation]
	else
		[:name, :email,:password, :password_confirmation]
	end
end

class Scope < Scope
   def resolve
	 if user.Full_access?
	   	scope.all
	 else
	   	scope.with_restricted_access
	 end
   end
end
end