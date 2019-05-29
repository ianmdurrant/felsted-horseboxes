module Spina
  class InquiriesController < Spina::ApplicationController
    invisible_captcha only: :create, honeypot: :spam, on_spam: :spam_redirect
    before_action :set_page

    layout "layouts/default/application"

    def new
      @inquiry = Spina::Inquiry.new
      @page = Spina::Page.find_by(name: "contactpage")
    end

    def index
      @inquiry = Spina::Inquiry.new
      @page = Spina::Page.find_by(name: "contactpage")
    end

    def create
      @inquiry = Spina::Inquiry.new(inquiry_params)
      if @inquiry.save
        Spina::InquiryMailer.inquiry(@inquiry).deliver_now
        flash[:success] = 'Message was successfully sent.'
        redirect_to inquiries_path
      else
        flash.now[:alert] = 'Please check the below errors'
        render :new
      end
    end

    private

    def spam_redirect
      redirect_to root_path
    end

    def inquiry_params
      params.require(:inquiry).permit(:archived, :email, :message, :name, :phone)
    end

    def set_page
      @page = Spina::Page.find_or_create_by(name: 'contactpage') do |page|
        page.link_url = '/contact-us'
        page.title = 'Contact us'
        page.view_template = 'contact'
        page.deletable = false
      end
    end
  end
end
