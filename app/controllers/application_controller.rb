class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
 # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception

 before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana, :nickname, :birthday, :address]
    devise_parameter_sanitizer.for(:sign_in) << [:first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana, :nickname, :birthday, :address]
    devise_parameter_sanitizer.for(:account_update) << [:first_name_kanji, :last_name_kanji, :first_name_kana, :last_name_kana, :nickname, :birthday, :address]
  end

end
