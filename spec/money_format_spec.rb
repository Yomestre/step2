require_relative '../lib/money_format'

describe MoneyFormat do
  context '.format' do
    it do
      expect(described_class.format(1)).to eq('1')
      expect(described_class.format(10)).to eq('10')
      expect(described_class.format(100)).to eq('100')
    end
    it do
      expect(described_class.format(1000)).to eq('1,000')
      expect(described_class.format(1200)).to eq('1,200')
      expect(described_class.format(10000)).to eq('10,000')
      expect(described_class.format(100000)).to eq('100,000')
    end
    it do
      expect(described_class.format(1000000)).to eq('1,000,000')
    end
  end
end
