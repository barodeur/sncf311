class IssuesController < ApplicationController
  def localize_me
    render text: 'loc me'
  end

  def chose_type
    render text: 'chose type'
  end
end
