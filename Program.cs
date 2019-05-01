using System.Collections.Generic;
using System.Linq;
using System;
class Test 
{ 
    public static List<string> findSchedules(int workHours, int dayHours, string pattern)
    {    
        var result = new List<string>();
        var workPattern = pattern.ToCharArray().Select(c => c.ToString()).ToList();        
        var openDaysPositions = indexesOf(pattern);
        var missingDays = pattern.Count(c=>c == '?');
        var totalWorked = sumPattern(pattern);
        
        var differenceWorked = workHours - totalWorked;

        var iterations = calculateSum(differenceWorked, missingDays, dayHours);

        foreach (var item in iterations)
        {
            int i = 0;
            foreach (var openDay in openDaysPositions)
            {
                workPattern[openDay] = item[i];
                i++;
            }
            result.Add(String.Join("", workPattern));
        }
        
        return result.OrderBy(o=>o).ToList();

    }

    private static List<List<string>> calculateSum(int differenceWorked, int missingDays, int dayHours)
    {
        var result = new List<List<string>>();        
        foreach (var perm in permutations(Enumerable.Range(0, dayHours+1).ToList(), missingDays)) 
        {
            if (perm.Sum(x=>(int.Parse(x))) == differenceWorked) 
            {
                result.Add(perm);
            }
        }

        return result;
    }

    private static List<List<string>> permutations(List<int> values, int missingDays)
    {
        var listOutput = new List<List<string>>();
        var counter = Math.Pow(values.Count, missingDays);
        
        
        for (int i = 0; i < counter; i++)
        {
            var list = new List<string>();

            var count = values.Count;            
            for (int j = 0; j < missingDays; j++) 
            {
                var selector = (int)(i / Math.Pow(count, j)) % count;
                if (list.Count > j)
                {
                    list[j] = (values[selector].ToString());
                } else
                {
                    list.Add(values[selector].ToString());
                }                
            }

            listOutput.Add(list);
        }

        return listOutput;    
    }

    private static List<int> indexesOf(string pattern)
    {
        int index = 0;
        List<int> indexes = new List<int>();
        foreach (var item in pattern.ToCharArray())
        {
            if (item.Equals('?'))
            {
                indexes.Add(index);                
            }
            index++;
        }
        
        return indexes;
    }

    private static int sumPattern(string pattern)
    {
        var soma = pattern.Where(w=>w !='?' && w!= '0').Sum(x=>(int)Char.GetNumericValue(x));        
        return soma;
    }
  

    private static void Main()
    {
        findSchedules(3, 2, "??2??00");
    }
  }