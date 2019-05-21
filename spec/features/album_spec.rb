require 'rails_helper'

describe Album, type: :feature do
  it 'visits the index page' do
    visit '/'
    expect(page.text).to include 'Albums'
  end

  it 'creates an album' do
    visit '/'
    click_on 'New Album'
    expect(page.text).to include 'Create Album'
    find('#album_title').set('Exile on Main St')
    find('#album_artist').set('The Rolling Stones')
    click_on 'Save Album'
    expect(page.text).to include 'The Rolling Stones'
  end

  it 'edits an album' do
    visit '/'
    click_on 'New Album'
    expect(page.text).to include 'Create Album'
    find('#album_title').set('Exile on Main St')
    find('#album_artist').set('The Rolling Stones')
    click_on 'Save Album'
    click_on 'Edit'
    find('#album_title').set('Beggars Banquet')
    click_on 'Save Album'
    expect(page.text).to include 'Beggars Banquet'
  end
end