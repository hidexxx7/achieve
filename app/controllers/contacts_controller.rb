class ContactsController < ApplicationController
  def index
    redirect_to new_contact_path
  end

  def new
    if params[:back]
      @contacts = Contact.new(contacts_params)
    else
      @contacts = Contact.new
    end
  end
  
  def confirm
    @contacts = Contact.new(contacts_params)
    render :new if @contacts.invalid?
  end
  
  def create
    @contacts = Contact.new(contacts_params)
    if @contacts.save
      redirect_to root_path, notice:"お問い合わせありがとうございました！"
    else
      render 'new'
    end
  end

  private
    def contacts_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
