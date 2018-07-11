require_relative '../../../spec_helper'

describe Web::Views::Tasks::Edit do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/tasks/edit.html.erb') }
  let(:view)      { Web::Views::Tasks::Edit.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
