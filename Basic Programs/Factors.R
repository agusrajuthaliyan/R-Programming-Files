num <- as.integer(readline(prompt = "Enter a number: "));
for(x in 1:num)
{
  if(num%% x == 0)
  {
    print(x);
  }
}