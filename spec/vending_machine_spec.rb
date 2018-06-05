require 'spec_helper'

describe VM::VendingMachine do

  subject { VM::VendingMachine.new }

  context 'inserting funds' do

    before(:each) do
      subject.insert_money(10)
    end

    it 'increases the current balance' do
      expect(subject.current_balance).to eq(10)
    end

    context 'and cancelling' do

      it 'returns the full amount' do
        amount_returned = subject.cancel
        expect(amount_returned).to eq(10)
      end

      it 'resets the balance' do
        subject.cancel
        expect(subject.current_balance).to eq(0)
      end
    end

  end

  context 'purchasing items' do

    let(:item_name) { 'Mars Bar' }
    let(:item_price) { 100 }

    context 'Error conditions' do
      context 'if insufficient funds have been supplied' do

        let(:funds) { 10 }

        before do
          subject.insert_money(funds)
        end

        it 'will not dispense' do
          expect { subject.purchase(item_name) }.to raise_error(RuntimeError, "Not enough money to buy #{item_name}")
        end

        it 'does not reset the current balance' do
          expect(subject.current_balance).to eq(funds)
        end
      end

      context 'if the item has sold out' do

        let(:funds) { 100 }

        before do
          subject.insert_money(funds)
        end

        it 'will not dispense' do
          expect { subject.purchase(item_name) }.to raise_error(RuntimeError, "#{item_name} is out of stock")
        end

        it 'does not reset the current balance' do
          expect(subject.current_balance).to eq(funds)
        end
      end
    end

    context 'A successful purchase' do

      it 'requires the item to be in stock and sufficient funds have been supplied' do
        fail('Not implemented')
      end

      it 'will decrease the stock count of the item by 1' do
        fail('Not implemented')
      end

      it 'will return the correct change' do
        fail('Not implemented')
      end

      it 'resets the balance' do
        fail('Not implemented')
      end
    end
  end
end
