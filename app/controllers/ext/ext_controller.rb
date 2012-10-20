class Ext::ExtController < ApplicationController
  layout 'ext'
  skip_before_filter :authenticate_user!
end
