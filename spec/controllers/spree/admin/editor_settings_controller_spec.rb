RSpec.describe Spree::Admin::EditorSettingsController, type: :controller do
  stub_authorization!

  before do
    reset_spree_preferences
    user = create(:admin_user)
    allow(controller).to receive(:try_spree_current_user).and_return(user)
  end

  context '#update' do
    it 'redirects to editor settings page' do
      put :update, params: { preferences: { enabled: true } }
      expect(response).to redirect_to spree.edit_admin_editor_settings_path
    end

    context 'For parameters:
              current_editor: CKEditor
              enabled: true
              ids: product_description page_body' do

      subject { SpreeEditor::Config }

      it 'sets preferred_current_editor to "CKEditor"' do
        put :update, params: { preferences: { current_editor: 'CKEditor' } }
        expect(subject.preferred_current_editor).to eq('CKEditor')
      end

      it 'sets preferred_enabled to true' do
        put :update, params: { preferences: { enabled: true } }
        expect(subject.preferred_enabled).to be(true)
      end

      it 'sets preferred_ids to product_description page_body' do
        put :update, params: { preferences: { ids: 'product_description page_body' } }
        expect(subject.preferred_ids).to eq('product_description page_body')
      end
    end
  end

  context '#edit' do
    it 'renders the edit template' do
      get :edit
      expect(response).to be_success
    end
  end
end
