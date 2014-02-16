require 'spec_helper'

feature 'Rich Editor Settings', js: true do
  stub_authorization!

  context '#edit' do
    scenario 'have default elements' do
      visit_rich_editor_settings

      within('h1') do
        expect(page).to have_text 'Rich Editor'
      end
      expect(page).to have_field 'ids', with: 'product_description page_body'
    end
  end

  context 'when changing editors' do
    given(:product) { create(:product) }

    context 'tinymce' do
      background do
        # We must copy the tinymce.yml file into the dummy app to use TinyMCE.
        @destination_root = File.expand_path('../../../dummy', __FILE__)
        FileUtils.rm_rf(@destination_root + '/config/tinymce.yml')
        FileUtils.cp(File.expand_path('../../../../lib/templates/config/tinymce.yml', __FILE__), @destination_root + '/config/tinymce.yml')
      end

      scenario 'will be applied when used' do
        visit_rich_editor_settings

        select2 'TinyMCE', from: 'Rich Editor engine'
        click_button 'Update'

        visit spree.edit_admin_product_path(product)
        expect(page).to have_css '.mce-tinymce', match: :one
      end
    end

    context 'ckeditor' do
      scenario 'will be applied when used' do
        visit_rich_editor_settings

        select2 'CKEditor', from: 'Rich Editor engine'
        click_button 'Update'

        visit spree.edit_admin_product_path(product)
        expect(page).to have_css '.cke_editor_product_description', match: :one
      end
    end
  end

  private

  def visit_rich_editor_settings
    visit spree.admin_path
    click_link 'Configuration'
    click_link 'Rich Editor'
  end
end
