require 'rails_helper'

RSpec.describe IkMemosController, type: :controller do
  before(:all) do
    @c_idea = FactoryGirl.create(:c_idea)
    @c_meet = FactoryGirl.create(:c_meet)
    @memo1 = FactoryGirl.create(:memo1)
    @memo2 = FactoryGirl.create(:memo2)
  end
  after(:all) do
    DatabaseCleaner.clean
  end

  describe '#index' do
    it "displays using index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "#update" do
    context( "when category_id is null, ") do
      it "will not be updated, and return to edit." do
        get :edit, params: { id: @memo2 }
        patch :update, params: { id: @memo2, ik_memo: attributes_for(:memo2_wrong) }
        expect(response).to render_template :edit
      end
    end
    context( "when category_id is not null, ") do
      it "will be updated" do
        get :edit, params: { id: @memo2 }
        patch :update, params: { id: @memo2, ik_memo: attributes_for(:memo2_new) }
        @memo2.reload
        expect(@memo2.ik_category_id).to eq(2)
        expect(@memo2.content).to eq("Meet with John, at Mitaka, 19:00 Jan 20.")
       end
      it "will redirect, after updated, " do
        get :edit, params: { id: @memo2 }
        patch :update, params: { id: @memo2, ik_memo: attributes_for(:memo2_new) }
        expect(response).to redirect_to action: :show, id: @memo2.id
      end
    end
  end

end
