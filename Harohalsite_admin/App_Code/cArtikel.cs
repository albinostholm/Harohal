//Erik Sandberg
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for cArtikel
/// </summary>
public class cArtikel
{
        public cArtikel()
        {
        }

    public string rubrik { get; set; }
    public string beskrivning { get; set; }
    public string id { get; set; }
    public decimal pris { get; set; }
    public int tid { get; set; }
    public DateTime date { get; set; }
    public string namn { get; set; }


}