using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libAnnaC
{
    public static class libAnna
    {
        public const string WHITE = "\u001b[37m";
        public const string BLUE = "\u001b[34m";
        public const string YELLOW = "\u001b[33m";
        public const string GREEN = "\u001b[32m";
        public const string RED = "\u001b[31m";
        public const string CYAN = "\u001b[36m";
        public const string PURPLE = "\u001b[35m";
        public const string BLACK = "\u001b[30m";
        public const string BOLD = "\u001b[1m";
        public const string NOBOLD = "\u001b[22m";
        public const string ENDC = "\u001b[0m";

        public static string Capitalize(this string s)
        {
            if (string.IsNullOrEmpty(s))
                return s;
            if (s.Length == 1)
                return s.ToUpper();
            return s.Remove(1).ToUpper() + s.Substring(1);
        }

        public static void Shuffle<T>(this IList<T> list)  
        {  
            int n = list.Count;  
            while (n > 1)
            {  
                n--;  
                int k = rng.Next(n + 1);  
                T value = list[k];  
                list[k] = list[n];  
                list[n] = value;  
            }  
        }
    }
}
