require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :user_id => 1,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path(@movie), :method => "post" do
      assert_select "input#movie_user_id", :name => "movie[user_id]"
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_description", :name => "movie[description]"
    end
  end
end
