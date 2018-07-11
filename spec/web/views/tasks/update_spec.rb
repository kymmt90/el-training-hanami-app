require_relative '../../../spec_helper'

describe Web::Views::Tasks::Update do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/tasks/update.html.erb') }
  let(:view)      { Web::Views::Tasks::Update.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
