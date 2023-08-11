// author: Josélio Júnior (Lunatic Fox) <joseliojrx25@gmail.com>
// copyright: Josélio Júnior (Lunatic Fox) 2023

#include "stdio.h"
#include "stdlib.h"

int main()
{
  char r[14];
  while (scanf("%s", &r) != EOF)
  {
    int b1 = 0, b2 = 0;
    int na[11];

    for (int i = 0, j = 0; i < 14; i++)
    {
      if (r[i] == '-' || r[i] == '.') continue;
      else 
      {
        char str[3] = {r[i], '\\', '0'};
        na[j] = atoi(str);
        j++;
      }
    }

    for (int i = 0, j = 9; i < 9; i++)
    {
      b1 += na[i] * (i + 1);
      b2 += na[i] * j;
      j--;
    }

    b1 %= 11; 
    b2 %= 11;

    b1 = b1 == 10 ? 0 : b1;
    b2 = b2 == 10 ? 0 : b2;

    if (b1 == na[9] && b2 == na[10])
      printf("CPF valido\n");
    else
      printf("CPF invalido\n");
  }
  return 0;
}
