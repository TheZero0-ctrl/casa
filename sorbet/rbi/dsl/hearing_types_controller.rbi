# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `HearingTypesController`.
# Please instead update this file by running `bin/tapioca dsl HearingTypesController`.

class HearingTypesController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::AllCasaAdmins::CasaOrgsHelper
    include ::ApiBaseHelper
    include ::CaseContactsHelper
    include ::ContactTypesHelper
    include ::DateHelper
    include ::EmancipationsHelper
    include ::FollowupHelper
    include ::MileageRatesHelper
    include ::NotificationsHelper
    include ::OtherDutiesHelper
    include ::PhoneNumberHelper
    include ::ReportHelper
    include ::RequestHeaderHelper
    include ::SidebarHelper
    include ::SmsBodyHelper
    include ::TemplateHelper
    include ::UiHelper
    include ::DeviseHelper
    include ::Pundit::Helper

    sig { returns(T.untyped) }
    def current_organization; end

    sig { returns(T.untyped) }
    def current_role; end

    sig { params(record: T.untyped).returns(T.untyped) }
    def policy(record); end

    sig { params(scope: T.untyped).returns(T.untyped) }
    def pundit_policy_scope(scope); end

    sig { returns(T.untyped) }
    def pundit_user; end

    sig { returns(T.untyped) }
    def true_user; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
