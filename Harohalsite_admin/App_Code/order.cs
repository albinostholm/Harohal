using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for order
/// </summary>
public class order
{
    public int tjanstID { get; set; }
    public string anstalldID { get; set; }
    public string personID { get; set; }
    public DateTime startTid { get; set; }
    public DateTime slutTid { get; set; }
    public int orderStatusID { get; set; }
    public order()
    {

    }
}