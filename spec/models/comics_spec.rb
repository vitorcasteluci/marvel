require 'rails_helper'

describe Comics do
  it 'should return a list of comics' do
    result = Comics.all(1,nil,20)
    expect(result).to eq( {:comics=>[{:id=>82967, :title=>"Marvel Previews (2017)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg"}, {:id=>82965, :title=>"Marvel Previews (2017)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg"}, {:id=>82970, :title=>"Marvel Previews (2017)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/c/80/5e3d7536c8ada.jpg"}, {:id=>3627, :title=>"Storm (2006)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/c/80/4bc5fe7a308d7.jpg"}, {:id=>1003, :title=>"Sentry, the (Trade Paperback)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/f/c0/4bc66d78f1bee.jpg"}, {:id=>331, :title=>"Gun Theory (2003) #4", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/c/60/4bc69f11baf75.jpg"}, {:id=>428, :title=>"Ant-Man (2003) #4", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/4/20/4bc697c680890.jpg"}, {:id=>1308, :title=>"Marvel Age Spider-Man Vol. 2: Everyday Hero (Digest)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/9/20/4bc665483c3aa.jpg"}, {:id=>2088, :title=>"Official Handbook of the Marvel Universe (2004) #14 (FANTASTIC FOUR)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/9/90/4bc6353e5fc56.jpg"}, {:id=>291, :title=>"Ant-Man (2003) #1", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/6/e0/4bc6a2497684e.jpg"}, {:id=>376, :title=>"Ant-Man (2003) #3", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/d/70/4bc69c7e9b9d7.jpg"}, {:id=>1886, :title=>"Official Handbook of the Marvel Universe (2004) #12 (SPIDER-MAN)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/b/40/4bc64020a4ccc.jpg"}, {:id=>1158, :title=>"ULTIMATE X-MEN VOL. 5: ULTIMATE WAR TPB (Trade Paperback)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/2/f0/4bc6670c80007.jpg"}, {:id=>1332, :title=>"X-Men: Days of Future Past (Trade Paperback)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/9/d0/58b5cfb6d5239.jpg"}, {:id=>1590, :title=>"Official Handbook of the Marvel Universe (2004) #9 (THE WOMEN OF MARVEL)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/9/b0/4c7d666c0e58a.jpg"}, {:id=>384, :title=>"Gun Theory (2003) #3", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/c/60/4bc69f11baf75.jpg"}, {:id=>183, :title=>"Startling Stories: The Incorrigible Hulk (2004) #1", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg"}, {:id=>1689, :title=>"Official Handbook of the Marvel Universe (2004) #10 (MARVEL KNIGHTS)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/9/30/4bc64df4105b9.jpg"}, {:id=>1749, :title=>"Official Handbook of the Marvel Universe (2004) #11 (X-MEN - AGE OF APOCALYPSE)", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/c/b0/4bc6494ed6eb4.jpg"}, {:id=>323, :title=>"Ant-Man (2003) #2", :thumbnail=>"http://i.annihil.us/u/prod/marvel/i/mg/f/20/4bc69f33cafc0.jpg"}], :search=>nil})
  end
end