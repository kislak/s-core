require 'spec_helper'
require 'rake'

describe 'db:seeds' do
  before { Goodcode::Application.load_tasks }

  it { expect { Rake::Task['db:seed'].invoke }.to change(Plan, :count).by(3) }
end
