RSpec.describe Solr::Query::Request::Boosting::ScaleFunctionBoost do
  describe '.to_solr_s' do
    subject { described_class.new(field: :machine_type, min: 1, max: 5) }

    it { expect(subject.to_solr_s).to eq('scale(machine_type,1,5)') }
  end
end
