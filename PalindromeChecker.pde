public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //your code here
  word = noNothing(word);
  return word.equalsIgnoreCase(reverse(word));
}

public String reverse(String str)
{
  String sNew = new String();
  //your code here
  for (int i = str.length() - 1; i >= 0; i--) {
    sNew += str.substring(i, i+1);
  }
  return sNew;
}

public String noNothing(String str)
{
  String sNew = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (Character.isLetter(str.charAt(i)))
    {
      sNew += str.substring(i, i+1);
    }
  }
  return sNew;
}

//Start by finishing the reverse() and palindrome() methods. You'll want the program to print that "rotator"
//is a palindrome and "test" and "rewriter" are NOT palindromes. You may find the custom codingbat problems
//reverse and isPalindrome helpful.

//Once you get the program working correctly for "rotator","test" and "rewriter",
//you'll need to devise a strategy for working with spaces and capital letters.
//You may find one or more of these custom codingbat problems helpful: noCapitals, noSpaces, numLetters,
//and onlyLetters.
