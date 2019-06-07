class PigLatinizer 

 
  def piglatinize(user_text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(user_text[0])
      user_text + 'way'
    elsif consonants.include?(user_text[0]) && consonants.include?(user_text[1])
      user_text[2..-1] + user_text[0..1] + 'ay'
    elsif consonants.include?(user_text[0])
      user_text[1..-1] + user_text[0] + 'ay'
    else
      user_text 
    end
  end 
end 