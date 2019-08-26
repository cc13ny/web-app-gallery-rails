#encoding: utf-8
module Concerns
  module BitRoles
    extend ActiveSupport::Concern

    included do
      cattr_accessor :roles_list
      self.roles_list = %w[admin]

    end

    def roles_list
      self.class.roles_list
    end

    def roles=(roles)
      self.roles_mask = (roles.map(&:to_s) & roles_list).map { |r| 2**roles_list.index(r) }.sum
    end

    def roles
      roles_list.reject do |r|
        ((self.roles_mask || 0) & 2**roles_list.index(r)).zero?
      end
    end

    def is?(role)
      roles.include?(role.to_s)
    end
    alias_method :role?, :is?

    def grant role
      self.roles = self.roles + [role.to_s]
    end

    def revoke role
      self.roles = self.roles - [role.to_s]
    end

    def grant! role
      self.grant(role)
      self.save
    end

    def revoke! role
      self.revoke(role)
      self.save
    end

    def admin?
      is? :admin
    end

    module ClassMethods
      def with_role role
        where "roles_mask & ? > 0", 2**roles_list.index(role.to_s)
      end
    end
  end
end
