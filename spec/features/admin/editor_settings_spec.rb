RSpec.feature 'Rich Editor Settings', :js do
  stub_authorization!

  context '#edit' do
    scenario 'have default elements' do
      visit spree.edit_admin_editor_settings_path

      expect(page).to have_field 'ids', with: 'product_description page_body'
    end
  end

end
