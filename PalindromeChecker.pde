public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome." + " " + reverse(lines[i]) );
    }
    else
    {
      println(lines[i] + " is NOT a palindrome." + " " + reverse(lines[i]));
    }
  }
}

//scope
public boolean palindrome(String sWord)
{
    String newWord = new String(sWord);
    newWord = noSpaces(newWord);
    newWord = onlyLetters(newWord);
    newWord = noCapitals(newWord);
  return  isPalindrome(newWord);
}
public String reverse(String sWord)
{
    String newWord = new String();
    //your code here
   newWord = noSpaces(sWord);
   newWord = onlyLetters(newWord);
   newWord = noCapitals(newWord);
   newWord = isReverse(newWord);
  return newWord;
   
}

// no space.
public String noSpaces(String sWord){
  return sWord.replace(" ","");
}

// only onlyLetters
public String onlyLetters(String sWord){
  String word = "";
  String alpha = "abcdefghigklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  for(int i = 0; i < sWord.length(); i++){
    for(int s = 0; s < alpha.length(); s++){
      if(sWord.charAt(i) == alpha.charAt(s)){
        word = word + alpha.charAt(s);
      }
    }
  }
  return word;
}

// noCapital
public String noCapitals(String sWord){
 return sWord.toLowerCase();
}

//
public String isReverse(String sWord){
  String newWord = "";
  if(sWord.length() > 1){
    for(int i = sWord.length() -1; i >= 0; i--){
      newWord = newWord + sWord.charAt(i);
    }
    return newWord;
  }
  return sWord;
}

// is palindrome true/false
public boolean isPalindrome(String sWord){
  if(sWord.length() == 0){return true;} 
  if(sWord.length() % 2 == 0){
    return false;
  }else{
    int s = sWord.length() - 1;
    for(int i = 0; i < sWord.length(); i++){
      if(sWord.charAt(i) != sWord.charAt(i)){
        return false;
      }
      s--;
    }
  }
    return true;
}