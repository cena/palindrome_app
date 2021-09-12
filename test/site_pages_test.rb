require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert last_response.ok?
    title_content = doc(last_response).at_css('title').content
    assert doc(last_response).at_css('h1')
    assert_equal "Palindrome App | Home", title_content
  end

  def test_about
    get '/about'
    assert last_response.ok?
    title_content = doc(last_response).at_css('title').content
    assert doc(last_response).at_css('h1')
    assert_equal "Palindrome App | About", title_content
  end

  def test_palindrome
    get '/palindrome'
    assert last_response.ok?
    title_content = doc(last_response).at_css('title').content
    assert doc(last_response).at_css('h1')
    assert_equal "Palindrome App | Palindrome", title_content
    assert doc(last_response).at_css('nav')
  end
end