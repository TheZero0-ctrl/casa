require "rails_helper"

RSpec.describe "/case_contacts", type: :request do
  let(:organization) { build(:casa_org) }
  let(:admin) { create(:casa_admin, casa_org: organization) }
  let(:volunteer) { create(:volunteer, casa_org: organization) }

  before { sign_in admin }

  describe "GET /index" do
    let!(:casa_case) { create(:casa_case, casa_org: organization) }
    let!(:past_contact) { create(:case_contact, casa_case: casa_case, occurred_at: 3.weeks.ago) }
    let!(:recent_contact) { create(:case_contact, casa_case: casa_case, occurred_at: 3.days.ago) }
    let(:filterrific) { {} }

    subject(:request) do
      get case_contacts_path(filterrific: filterrific)

      response
    end

    it { is_expected.to have_http_status(:success) }

    it "returns all case contacts" do
      page = request.parsed_body
      expect(page).to include(past_contact.creator.display_name, recent_contact.creator.display_name)
    end

    context "with filters applied" do
      let(:filterrific) { {occurred_starting_at: 1.week.ago} }

      it "returns all case contacts" do
        page = request.parsed_body
        expect(page).to include(recent_contact.creator.display_name)
        expect(page).not_to include(past_contact.creator.display_name)
      end
    end
  end

  describe "GET /new" do
    subject(:request) do
      get new_case_contact_path

      response
    end

    it { is_expected.to have_http_status(:redirect) }

    it "creates a new case contact" do
      expect {
        request
      }.to change(CaseContact, :count).by(1)
    end
  end

  describe "GET /edit" do
    let(:case_contact) { create(:case_contact, casa_case: create(:casa_case, :with_case_assignments), notes: "Notes") }

    subject(:request) do
      get edit_case_contact_url(case_contact)

      response
    end

    it { is_expected.to have_http_status(:redirect) }

    describe "unread notification" do
      let(:followup) { create(:followup, case_contact: case_contact, creator: admin) }

      subject(:request) do
        get edit_case_contact_url(case_contact, notification_id: admin.notifications.first.id)

        response
      end

      before { FollowupResolvedNotification.with(followup: followup, created_by: admin).deliver(followup.creator) }

      it "is marked as read" do
        request
        expect(admin.notifications.unread).to eq([])
      end
    end
  end

  describe "DELETE /destroy" do
    let(:case_contact) { create(:case_contact) }

    subject(:request) do
      delete case_contact_path(case_contact), headers: {HTTP_REFERER: case_contacts_path}

      response
    end

    it { is_expected.to redirect_to(case_contacts_path) }

    it "shows correct flash message" do
      request
      expect(flash[:notice]).to eq("Contact is successfully deleted.")
    end

    it "soft deletes the case_contact" do
      expect { request }.to change { case_contact.reload.deleted? }.from(false).to(true)
    end
  end

  describe "GET /restore" do
    let(:case_contact) { create(:case_contact) }

    subject(:request) do
      post restore_case_contact_path(case_contact), headers: {HTTP_REFERER: case_contacts_path}

      response
    end

    before { case_contact.destroy }

    it { is_expected.to redirect_to(case_contacts_path) }

    it "shows correct flash message" do
      request
      expect(flash[:notice]).to eq("Contact is successfully restored.")
    end

    it "soft deletes the case_contact" do
      expect { request }.to change { case_contact.reload.deleted? }.from(true).to(false)
    end
  end
end
