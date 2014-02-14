require 'spec_helper'

feature 'Rich Editor Settings', js: true do
  stub_authorization!

  background do
    SpreeEditor::Config[:current_editor] = 'CKEditor'
  end

  context 'visiting editor settings' do
    scenario 'should have the right content' do
      visit spree.admin_path
      click_link 'Configuration'
      click_link 'Rich Editor'
      within('h1') do
        page.should have_content 'Rich Editor'
      end
      page.should have_field 'ids', with: 'product_description page_body'
    end
  end

  context 'editing settings' do
    background do
      # We must copy the tinymce.yml file into the dummy app to use TinyMCE.
      @destination_root = File.expand_path('../../../dummy', __FILE__)
      FileUtils.rm_rf(@destination_root + '/config/tinymce.yml')
      FileUtils.cp(File.expand_path('../../../../lib/templates/config/tinymce.yml', __FILE__), @destination_root + '/config/tinymce.yml')
    end

    scenario 'should be able to change between CKEditor and TinyMCE editors' do
      product = create(:product)
      visit spree.edit_admin_product_path(product)
      page.should have_css '#cke_product_description'

      click_link 'Configuration'
      click_link 'Rich Editor'

      select 'TinyMCE', from: 'current_editor'

      click_button 'Update'
      visit spree.edit_admin_product_path(product)
      page.should have_css '.mce-tinymce', match: :one
    end
  end
end
