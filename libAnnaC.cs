using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libAnnaC
{
    public static class libAnna
    {
        public static string WHITE = "\u001b[37m";
        public static string BLUE = "\u001b[34m";
        public static string YELLOW = "\u001b[33m";
        public static string GREEN = "\u001b[32m";
        public static string RED = "\u001b[31m";
        public static string CYAN = "\u001b[36m";
        public static string PURPLE = "\u001b[35m";
        public static string BLACK = "\u001b[30m";
        public static string BOLD = "\u001b[1m";
        public static string NOBOLD = "\u001b[22m";
        public static string ENDC = "\u001b[0m";
        private static Random rng = new Random();  

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
