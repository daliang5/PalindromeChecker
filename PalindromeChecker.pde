public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    String checkee = lines[i];
    checkee = noSpaces(checkee); //removes spaces
    checkee = onlyLetters(checkee); //removes non-Letters
    checkee = noCapitals(checkee); // removes caps
    
    if(palindrome(checkee) == true)//lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  boolean palind = false;
  if(sWord.length() < 2)
    return true;
  for(int i=0; i<sWord.length(); i++){
    if(sWord.charAt(i) != sWord.charAt(sWord.length() -1 - i)){
      palind = false;
      break;
    }
    else 
      palind = true;
  }
  return palind;
}
public String noSpaces(String sWord){
  String noSpace = "";
  for(int i =0; i<sWord.length(); i++){
    if(sWord.charAt(i) != ' ')
      noSpace += sWord.substring(i,i+1);
  }
  return noSpace;
}
public String onlyLetters(String sString){
  String onlyLet = "";
  
  for(int i=0 ;i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true)
      onlyLet += sString.substring(i,i+1);
      
  }
  return onlyLet;
}

public String reverse(String sWord){
  char[] bob = sWord.toCharArray();
  char[] rever = new char[bob.length];
  String rev = "";
  
  for(int i=0; i< bob.length; i++){
    rever[i] = bob[bob.length - 1- i];
  }
  for(int i=0; i< bob.length; i++)
    rev += rever[i];
    
  return rev;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
