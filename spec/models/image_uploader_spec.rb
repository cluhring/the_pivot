require 'rails_helper'
require 'carrierwave/test/matchers'
require 'pry'
describe ListingImageUploader, :type => :model do
  include CarrierWave::Test::Matchers

  before do
    ListingImageUploader.enable_processing = true
    @listing = create(:listing)
    @user = create(:user)
    @image1 = ListingImage.create(image: File.open(File.join(Rails.root, 'app/assets/images/denver.jpg')))
    @image2 = ListingImage.create(image: File.open(File.join(Rails.root, 'app/assets/images/seattle.jpg')))
    @listing << @image1
    @listing << @image2
    @listing.save
  end

  after do
    MyUploader.enable_processing = false
    @listing.remove!
  end

  context 'the file type' do
    it "should only contain jpg jpeg png or tiff" do
      ListingImage.create(image: File.open(File.join(Rails.root, 'app/assets/images/denver.pdf'))).should be_false
      ListingImage.create(image: File.open(File.join(Rails.root, 'app/assets/images/denver.jpg'))).should be_true
    end
  end

  context 'listings' do
    it "should accept multipul listing images" do
      expect @listing.listing_images.count.to be > 1
    end
  end

  context 'users' do
  user = User.create(
    first_name: "Alice",
    last_name: "Smith",
    display_name: "valid",
    email: "alica@email.com",
    about_me: "I am Alice",
    password: "password"
  )
   # binding.pry
    user.image = File.open(File.join(Rails.root, 'app/assets/images/denver.jpg'))
    it "should accept an image" do
      expect user.image.file.content_type.should eq("image/jpeg")
    end
  end

  context 'the small version' do
    xit "should scale down a landscape image to fit within 200 by 200 pixels" do
      @listing.small.should be_no_larger_than(200, 200)
    end
  end

  xit "should make the image readable only to the owner and not executable" do
    @listing.should have_permissions(0600)
  end
end
