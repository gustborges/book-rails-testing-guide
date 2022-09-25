require "rails_helper"

RSpec.describe PhoneNumber do
  let!(:phone_number) { create(:phone_number) }

  context "phone number contains dashes" do
    before { phone_number.update!(value: "555-856-8075") }

    it "strips out the dashes" do
      expect(phone_number.value).to eq("5558568075")
    end
  end

  context "phone number contains parentheses" do
    before { phone_number.update!(value: "(555) 8568075") }

    it "strips out the parentheses" do
      expect(phone_number.value).to eq("5558568075")
    end
  end

  context "phone number contains country code" do
    before { phone_number.update!(value: "+1 555 8568075") }

    it "strips out the country code" do
      expect(phone_number.value).to eq("5558568075")
    end
  end
end
