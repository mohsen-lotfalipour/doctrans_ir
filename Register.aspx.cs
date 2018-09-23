using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;

namespace doctrans_ir
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public Boolean CheckCardNum(string cardNum)
        {
            Boolean check = false;
            int k = 0;
            int d = 0;
            int s = 0;
            for (int i = 0; i < 16; i++)
            {
                k = (i % 2 == 0) ? 2 : 1;
                d = int.Parse(cardNum.Substring(i, 1)) * k;
                s += (d > 9) ? d - 9 : d;
            }
            if ((s % 10) == 0)
                check = true;
            else
                check = false;
            return check;
        }

         //public Boolean IsValidNationalCode(this String nationalCode)
         //{
         //    //در صورتی که کد ملی وارد شده تهی باشد

         //    if (String.IsNullOrEmpty(nationalCode))
         //        throw new Exception("لطفا کد ملی را صحیح وارد نمایید");


         //    //در صورتی که کد ملی وارد شده طولش کمتر از 10 رقم باشد
         //    if (nationalCode.Length != 10)
         //        throw new Exception("طول کد ملی باید ده کاراکتر باشد");

         //    //در صورتی که کد ملی ده رقم عددی نباشد
         //    var regex = new Regex(@"\d{10}");
         //    if (!regex.IsMatch(nationalCode))
         //        throw new Exception("کد ملی تشکیل شده از ده رقم عددی می‌باشد؛ لطفا کد ملی را صحیح وارد نمایید");

         //    //در صورتی که رقم‌های کد ملی وارد شده یکسان باشد
         //    var allDigitEqual = new[] { "0000000000", "1111111111", "2222222222", "3333333333", "4444444444", "5555555555", "6666666666", "7777777777", "8888888888", "9999999999" };
         //    if (allDigitEqual.Contains(nationalCode)) return false;


         //    //عملیات شرح داده شده در بالا
         //    var chArray = nationalCode.ToCharArray();
         //    var num0 = Convert.ToInt32(chArray[0].ToString()) * 10;
         //    var num2 = Convert.ToInt32(chArray[1].ToString()) * 9;
         //    var num3 = Convert.ToInt32(chArray[2].ToString()) * 8;
         //    var num4 = Convert.ToInt32(chArray[3].ToString()) * 7;
         //    var num5 = Convert.ToInt32(chArray[4].ToString()) * 6;
         //    var num6 = Convert.ToInt32(chArray[5].ToString()) * 5;
         //    var num7 = Convert.ToInt32(chArray[6].ToString()) * 4;
         //    var num8 = Convert.ToInt32(chArray[7].ToString()) * 3;
         //    var num9 = Convert.ToInt32(chArray[8].ToString()) * 2;
         //    var a = Convert.ToInt32(chArray[9].ToString());

         //    var b = (((((((num0 + num2) + num3) + num4) + num5) + num6) + num7) + num8) + num9;
         //    var c = b % 11;

         //    return (((c < 2) && (a == c)) || ((c >= 2) && ((11 - c) == a)));
         //} 
     

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "5";
            TextBox2.Text = "5";
            TextBox3.Text = "5";
            TextBox4.Text = "5";
            TextBox5.Text = "5";
            TextBox6.Text = "5";
            TextBox7.Text = "5";
            TextBox8.Text = "5";
            TextBox9.Text = "5";
            TextBox10.Text = "5";
            TextBox11.Text = "5";
            TextBox12.Text = "5";
            TextBox13.Text = "5";
            TextBox14.Text = "5";
            TextBox15.Text = "5";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=Lotfalipour;Initial Catalog=doctrans_ir;Integrated Security=True;Pooling=False");
                conn.Open();
                string insertQuery = "insert into USERS (username, password, name, family, phone, mobile, city, address, nationalid, field, Grade, sex, birthday, lastlogin, photo ) " +
                    "                           values (@username, @password, @name, @family, @phone, @mobile, @city, @address, @nationalid, @field, @Grade, @sex, @birthday, @lastlogin, @photo)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@family", TextBox4.Text);
                cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
                cmd.Parameters.AddWithValue("@mobile", TextBox6.Text);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text);
                cmd.Parameters.AddWithValue("@address", TextBox8.Text);
                cmd.Parameters.AddWithValue("@nationalid", TextBox9.Text);
                cmd.Parameters.AddWithValue("@field", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Grade", TextBox11.Text);
                cmd.Parameters.AddWithValue("@sex", RadioButtonList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@birthday", System.DateTime.Now.ToString()/*TextBox13.Text*/);
                cmd.Parameters.AddWithValue("@lastlogin", System.DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@photo", TextBox15.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript' >alert('ثبت نام انجام شد')</script>");

                //Response.Write("user registeration Successfully!!!thank you");
                conn.Close();
            }
            catch (Exception ex)
            {
                //Response.Write("<script LANGUAGE='JavaScript' >alert('"+ "error" + ex.ToString() + "')</script>");
                Response.Write("error" + ex.ToString());
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(CheckCardNum(TextBox3.Text))
            {
                Label17.Text = "fuck u baby";
            }
            else
            {
                Label17.Text = "oh Fuckkkkkkkkk";


            }
        }
    }
}