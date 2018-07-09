require_relative '../../../spec_helper'

describe Web::Views::Tasks::New do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/tasks/new.html.erb') }
  let(:view)      { Web::Views::Tasks::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
