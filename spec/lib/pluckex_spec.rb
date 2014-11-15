require 'spec_helper'

describe Pluckex do
  describe 'activerecord extention' do
    let(:people) { Person.all }
    describe 'pluck_tied_by_id' do
      subject { Person.pluck_tied_by_id(:name) }
      it do
        expect(subject).to eq(
          people.first.id => people.first.name,
          people.second.id => people.second.name,
        )
      end
    end
    describe 'pluck_with_keys' do
      subject { Person.pluck_with_keys(:id, :name) }
      it do
        expect(subject).to eq([
          {:id => people.first.id, :name => people.first.name},
          {:id => people.second.id, :name => people.second.name},
        ])
      end
    end
  end
end
