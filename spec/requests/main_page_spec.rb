require 'rails_helper'

RSpec.describe "main page", type: :request do
  it "succes" do
    get "/"
    expect(response).to be_success
  end
end