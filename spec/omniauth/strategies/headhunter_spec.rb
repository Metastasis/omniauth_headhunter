require 'spec_helper'

describe OmniAuth::Strategies::HeadHunter do

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  subject do
    OmniAuth::Strategies::HeadHunter.new(nil, @options || {})
  end

  describe '#client' do
    it 'has correct site URL' do
      expect(subject.client.site).to eq('https://hh.ru')
    end

    it 'has correct authorize URL' do
      expect(subject.client.authorize_url).to eq('https://hh.ru/oauth/authorize')
    end

    it 'has correct token URL' do
      expect(subject.client.token_url).to eq('https://hh.ru/oauth/token')
    end
  end

  describe '#callback_path' do
    it "has the correct callback path" do
      expect(subject.callback_path).to eq('/auth/headhunter/callback')
    end
  end

end
