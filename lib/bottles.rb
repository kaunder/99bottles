class Bottles
  def verse(num)
    verse = <<-VERSE
#{bottles(num, true)} of beer on the wall, #{bottles(num)} of beer.
#{take_down(num)}, #{bottles((num - 1)%100)} of beer on the wall.
    VERSE
   verse
  end

  def song
    verses(99, 0)
  end

  def verses(first, last)
    i = first
    result = verse(i)
    i-=1
    while i >= last
      result = "#{result}\n#{verse(i)}"
      i-=1
    end
    result
  end

  def bottles(num, first=false)
    case num
    when 1
      "#{num} bottle"
    when 0
      first ? "No more bottles" : "no more bottles"
    else
      "#{num} bottles"
    end
  end

  def take_down(num)
    case num
    when 1
      "Take it down and pass it around"
    when 0
      "Go to the store and buy some more"
    else
      "Take one down and pass it around"
    end
  end
end
