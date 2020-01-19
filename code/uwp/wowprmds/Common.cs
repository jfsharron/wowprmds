//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Linq;
//using System.Runtime.InteropServices.WindowsRuntime;
//using Windows.Foundation;
//using Windows.Foundation.Collections;
//using Windows.UI.Xaml;
//using Windows.UI.Xaml.Controls;
//using Windows.UI.Xaml.Controls.Primitives;
//using Windows.UI.Xaml.Data;
//using Windows.UI.Xaml.Input;
//using Windows.UI.Xaml.Media;
//using Windows.UI.Xaml.Navigation;
//using System.Data;
//using System.Drawing;
//using MySql.Data.MySqlClient;
//using MySqlConnector;

//namespace wowprmds
//{
//    public sealed partial class Common
//    {
//        //  =======================================================================
//        //  MySQL connection        
//        //  =======================================================================

//        //  connection variables
//        private static string conServer = "192.168.2.107";     //  db server
//        private static string user = "jfsharron";              //  username
//        private static string psswd = "marie151414";           //  password

//        //  user connection string
//        static string myConnection = "datasource = " + Common.conServer + "; username = " +
//            Common.user + "; password = " + Common.psswd;

//        //  database connection string
//      //  private MySqlConnection myConn = new MySqlConnection(myConnection);
//        //MySqlDataAdapter myDataAdapter = new MySqlDataAdapter();
//       // myDataAdapter.selectCommand = new MySqlCommand("SELECT contact_first wowprmds.contact;", myConn);

            













//        public static String Select(string x)
//        {
//            //int x = 7;
            

//            string z = x + " world";

//            return z;

//        }






//    }  // end class common


//}  //  end namespace wowprmds