class UserProfileForm < Reform::Form
  include Reform::Form::ActiveModel::ModelReflections # for cocoon
  property :first_name
  property :last_name
  property :email



  property :profile do
    property :about
    property :headline
  end

  collection :experiences do
    property :employer_name
    property :company_id
    property :start_year
    property :start_month
    property :end_year
    property :end_month
    property :current
    property :description
    property :location
  end

  collection :educations do
    property :school_name
    property :degree
    property :field_of_study
    property :start_year
    property :start_month
    property :end_year
    property :end_month
    property :current
    property :gpa
    property :description
  end

  def initialize(user)
    super(user)
  end
end