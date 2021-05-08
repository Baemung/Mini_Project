﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jsLibrary;
using Microsoft.SharePoint.Client;
using PoliticInform.AppCode;
using static System.Net.Mime.MediaTypeNames;

namespace PoliticInform
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string ConnStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Baemung\Documents\KOSTA_Project\Produce300\miniProject2.mdf;Integrated Security=True;Connect Timeout=30";
        static public bool isLogin = false;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uid = tbLoginID.Text;
            string pwd = tbLoginPassword.Text;
            SQLDB db = new SQLDB(ConnStr);
            string sql = $"select password from userinformation where uid='{uid}'";
            if(db.Get(sql) == null) MessageBox.Show("등록되지 않은 사용자입니다.", this.Page);
            else
            {
                if (db.Get(sql).ToString().Trim() == pwd)
                {
                    isLogin = true;
                    Response.Redirect("~/Default");
                }
                else MessageBox.Show("사용자 ID와 비밀번호가 맞지 않습니다.", this.Page);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register");
        }
    }
}