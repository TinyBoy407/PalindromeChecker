public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(noCapitals(word).equals(reverse(word))){
    return true;
  }
  else{
    return false;
  }
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
      if(!str.substring(i-1,i).equals(" ") && Character.isLetter(str.charAt(i-1))){
        sNew += str.substring(i-1,i);
     }
  }
    return sNew.toLowerCase();
}

public String noCapitals(String word){
  return noSpaces(word).toLowerCase();
}

public String noSpaces(String word){
  String result = new String();
  for(int i = 0; i < word.length(); i++)
     if(!word.substring(i,i+1).equals(" ") && Character.isLetter(word.charAt(i)))
       result=result + word.substring(i,i+1);
  return result;
}


