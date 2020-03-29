using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using System.Linq;

namespace PasswordHashingAndAuthentication
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Dictionary<string, string> user = new Dictionary<string, string>();
            Dictionary<string, string> hasheduser = new Dictionary<string, string>();
            int userResponse = Util.printUI();

            while (userResponse != 4)
            {
                if (userResponse == 1)
                {
                    Util.getNewUser(user, hasheduser);
                    userResponse = Util.printUI();
                }
                else if (userResponse == 2)
                {
                    Util.getUser(user);
                    userResponse = Util.printUI();
                }
                else if (userResponse == 3)
                {
                    Util.printUsers(hasheduser);
                    userResponse = Util.printUI();
                }
                else
                {
                    Console.WriteLine("invalid input, try again");
                    userResponse = Util.printUI();
                }
            }
            System.Environment.Exit(4);
        }
    }

    public class Util
    {
        public static void getNewUser(Dictionary<string, string> user, Dictionary<string, string> hasheduser)
        {
            Console.WriteLine("create a new user");
            Console.Write("create the username: ");
            string username = Console.ReadLine();
            Console.Write("create the password: ");
            string password = Console.ReadLine();
            user.Add(username, password);
            using (SHA256 sha256Hash = SHA256.Create())
            {
                string hashedPassword = GetHash(sha256Hash, password);
                hasheduser.Add(username, hashedPassword);

            }
            static string GetHash(HashAlgorithm hashAlgorithm, string input)
            {
                byte[] data = hashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sBuilder = new StringBuilder();
                for (int i = 0; i < data.Length; i++)
                {
                    sBuilder.Append(data[i].ToString("x2"));
                }
                return sBuilder.ToString();
            }
        }
        public static void getUser(Dictionary<string, string> user)
        {
            Console.WriteLine("authenticate an existing user");
            Console.Write("enter the username: ");
            string inputname = Console.ReadLine();
            if (user.ContainsKey(inputname))
            {
                Console.WriteLine("this user is in the database");
                Console.Write("enter the password: ");
                string inputword = Console.ReadLine();
                if (user.ContainsValue(inputword))
                {
                    Console.WriteLine("user authenticated");
                }
                else
                {
                    Console.WriteLine("password does not match");
                }
            }
            else
            {
                Console.WriteLine("this user is not in the database");
            }
        }
        public static void printUsers(Dictionary<string, string> hasheduser)
        {
            foreach (var item in hasheduser)
            {
                Console.WriteLine("user: " + item.Key + " \npassword: " + item.Value);
            }
        }
        public static int printUI()
        {
            Console.Write("<1> estabilish an account; <2> authenticate a user; <3> print all users; <4> exit the system; \nselect one option: ");
            int response = int.Parse(Console.ReadLine());
            return response;
        }
    }
}
