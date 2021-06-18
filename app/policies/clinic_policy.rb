class ClinicPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    false
  end

  def show?
    true
  end
end
