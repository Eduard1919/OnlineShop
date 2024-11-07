class DialogsController < ApplicationController
  def welcome
    @name = session['name']
    @age = session['age']
  end

  def first_meet
  end

  def after_first_meet
    @name = params['name']
    if @name.present?
      session['name'] = @name
      redirect_to({controller: :dialogs, action: :welcome})
    else
      redirect_to({controller: :dialogs, action: :first_meet})
    end
  end

  def ask_about_age
  end

  def after_ask_about_age
    @age = params['age']
    if @age.present? and @age.to_i > 0
      session['age'] = @age
    end
  end

  def date_info
    @date = Date.today()
    respond_to do |format|
      format.html
      format.json do
        render json: {date: I18n.l(@date)}
      end
      format.xml do
        render xml: {date: I18n.l(@date)}.to_xml
      end
    end
  end
end
