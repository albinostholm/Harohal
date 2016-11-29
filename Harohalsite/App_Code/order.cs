using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for order
/// </summary>
public class order
{
    int tjanstID { get; set; }
    string anstalldID { get; set; }
    string personID { get; set; }
    DateTime startTid { get; set; }
    DateTime slutTid { get; set; }
    int orderStatusID { get; set; }
    public order()
    {

    }
}