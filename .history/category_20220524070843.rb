require "./drink"

class Preparation
  attr_accessor :drinks
  #ドリンクを呼び出している。Vendingmacheineで使う為、書き込みと読み込みを定義しなければいけないから

  def initialize(drinks)
   @drinks = drinks
    # 初期化のタイミングでvalidate_uniqueとvalidate_classをした方がいいかも
    # インスタンス化している
  end

  #ドリンク名 x 値段が同じ組み合わせのドリンクしか入っていなければtrue 一つでも違うのがあるとfalse
  def validate_unique
    @drinks.each do |drink1|
      @drinks.each do |drink2|
        false unless drink1.name == drink2.name || drink1.price == drink2.price
        break
      end
    end
    true
  end

  #
  def validate_class
    @drinks.each do |drink|
      if drink.kind_of?(Drink) 
        true
        #問い合わせメソッド　戻り値　true=push false=errors
        #ドリンク
      end
    end
  end
end