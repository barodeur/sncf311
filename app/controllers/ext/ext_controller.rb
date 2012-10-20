class Ext::ExtController < ApplicationController
  skip_before_filter :authenticate_user!
end
