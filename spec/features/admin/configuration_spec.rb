require 'spec_helper'

feature "Rich Editor Settings", js: true do

  stub_authorization!

  before do
    SpreeEditor::Config[:current_editor] = 'CKEditor'
  end

  context "visiting editor settings" do

    it "should have the right content" do
      visit spree.admin_editor_settings_path
      within 'h1' do
        page.should have_content("Rich Editor")
      end
      within 'table' do
        page.should have_content('product_description page_body')
      end
    end

  end

  context "editing settings" do

    before do
      # We must copy the tinymce.yml file into the dummy app to use TinyMCE.
      @destination_root = File.expand_path("../../../dummy", __FILE__)
      FileUtils.rm_rf(@destination_root + "/config/tinymce.yml")
      FileUtils.cp(File.expand_path("../../../../lib/templates/config/tinymce.yml", __FILE__), @destination_root + "/config/tinymce.yml")
    end

    it "should be able to change between CKEditor and TinyMCE editors" do
      product = create(:product)
      visit spree.edit_admin_product_path(product)
      page.should have_css('#cke_product_description')
      click_link "Configuration"
      click_link "Rich Editor"
      click_icon 'edit'
      select 'TinyMCE', from: 'current_editor'
      click_button "Update"
      visit spree.edit_admin_product_path(product)
      page.should have_css('.mceEditor')
    end

  end

end
