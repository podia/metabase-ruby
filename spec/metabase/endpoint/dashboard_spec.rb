# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dashboard do
  include_context 'login'

  describe 'dashboards', vcr: true do
    context 'success' do
      it 'returns all dashboards' do
        dashboards = client.dashboards
        expect(dashboards).to be_kind_of(Array)
      end

      it 'returns a dashboard' do
        dashboard = client.dashboard
        expect(dashboard).to be_kind_of(Hash)
      end
    end
  end
end
