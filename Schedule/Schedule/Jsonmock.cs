using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Schedule
{
    static class Jsonmock
    {
        public class JsonResponse
        {            
            public int page { get; set; }
            public int per_page { get; set; }
            public int total { get; set; }
            public int total_pages { get; set; }
            public List<StockPrice> data { get; set; }
        }

        public class StockPrice
        {
            public DateTime date { get; set; }
            public double open { get; set; }
            public double high { get; set; }
            public double low { get; set; }
            public double close { get; set; }
        }

        static void openAndClosePrices(string firstDate, string lastDate, string weekDay)
        {
            string baseUrl = "https://jsonmock.hackerrank.com/api/stocks";
            JsonResponse jsonResponse;
            List<StockPrice> output = new List<StockPrice>();
            int index = 1;
            do
            {
                jsonResponse = RequestApi(baseUrl, index);
                output.AddRange(jsonResponse.data);
                index++;
            } while (jsonResponse.page < jsonResponse.total_pages);

            var filteredOutput = output.Where(w => w.date.DayOfWeek.ToString() == weekDay &&
                         w.date >= Convert.ToDateTime(firstDate) &&
                         w.date <= Convert.ToDateTime(lastDate));

            PrintOutput(filteredOutput);
        }

        static void PrintOutput(IEnumerable<StockPrice> input)
        {
            foreach (var stockPrice in input)
            {
                Console.WriteLine("{0} {1} {2}", 
                                   stockPrice.date.ToString("d-MMMM-yyyy"),
                                   stockPrice.open,
                                   stockPrice.close);
            }
        }

        static JsonResponse GetJsonResponse(string json)
        {
            return JsonConvert.DeserializeObject<JsonResponse>(json);
        }

        static JsonResponse RequestApi(string baseUrl, int page)
        {
            return GetJsonResponse(GetJson(baseUrl + "?page="+page));
        }

        static string GetJson(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);

            WebResponse response = request.GetResponse();
            using (Stream responseStream = response.GetResponseStream())
            {
                StreamReader reader = new StreamReader(responseStream, System.Text.Encoding.UTF8);
                return reader.ReadToEnd();
            }
        }

        public static void Start()
        {
            openAndClosePrices("1-January-2000", "22-February-2000", "Monday");
        }
    }
}
