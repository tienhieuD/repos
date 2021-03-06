﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hrm2017.forms.config
{
    public partial class QuanLyPhongBan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!Page.IsPostBack)
            {
                string thaotac = Request.QueryString["thaotac"];
                string mapb = Request.QueryString["mapb"];


                switch(thaotac)
                {
                    case "them":
                        pn2.Visible = true;
                        pnDSPB.Visible = false;
                        txtMaPB.ReadOnly = true;
                        btn_them.Visible = true;
                        tang_ma();
                        lbTieude.Text = "THÊM PHÒNG BAN";
                        break;
                    case "sua":
                        pn2.Visible = true;
                        pnDSPB.Visible = false;
                        txtMaPB.ReadOnly = true;
                        btn_sua.Visible = true;
                        lbTieude.Text = "SỬA PHÒNG BAN";
                        loadPhongBan();
                        txtMaPB.ReadOnly = true;
                        btn_luu.Visible = true;
                        btn_sua.Visible = false;
                        txtTenPB.Focus();
                        break;
                    case "xem":
                        pn2.Visible = true;
                        pnDSPB.Visible = false;
                        btn_xoa.Visible = true;
                        btn_sua.Visible = true;
                        loadPhongBan();
                        lbTieude.Text = "THÔNG TIN PHÒNG BAN";
                        txtMaPB.ReadOnly = true;
                        txtTenPB.ReadOnly = true;
                        break;
                    default:
                        lbTieude.Text = "DANH SÁCH PHÒNG BAN";
                        break;
                }
            }
           
            loadDanhSachPhongBan();
        }
       private void loadDanhSachPhongBan()
        {
            string sql = @"SELECT ROW_NUMBER() over (order by MAPB) as 'STT', MAPB as 'MÃ PHÒNG BAN',TENPB as 'TÊN PHÒNG BAN' FROM tbl_phongban";
            DataTable db = DataMan.GetDataTable(sql);
            db.Columns.Add("CHI TIẾT");
           for (int i = 0; i < db.Rows.Count; i++)
            {
                int n = db.Columns.Count - 1;
                string mapb = db.Rows[i][1].ToString();
                db.Rows[i][n] = string.Format("<a href='QuanLyPhongBan.aspx?thaotac=xem&mapb={0}'>Chi tiết</a>", mapb);
                   
            }
            lbDsPhongBan.Text = InterMan.ConvertToHtml(db);   
        }
        private void loadPhongBan()
        {
            string mapb = Request.QueryString["mapb"];
            string sql = string.Format(@"SELECT * FROM tbl_phongban WHERE MAPB = '{0}'", mapb);
            DataTable db = DataMan.GetDataTable(sql);
            txtMaPB.Text = db.Rows[0]["MAPB"].ToString();
            txtTenPB.Text = db.Rows[0]["TENPB"].ToString();
            
        }
        protected void btn_them_Click(object sender, EventArgs e)
        {
            string sql = string.Format(@"
            INSERT INTO [dbo].[tbl_phongban] ([TENPB])
            VALUES (N'{0}')",txtTenPB.Text);
            DataMan.ExcuteCommand(sql);
            Response.Redirect("QuanLyPhongBan.aspx");
        }

        protected void btn_sua_Click(object sender, EventArgs e)
        {
            string mapb = Request.QueryString["mapb"];
            Response.Redirect(string.Format("QuanLyPhongBan.aspx?thaotac=sua&mapb={0}", mapb));
        }

        protected void btn_xoa_Click(object sender, EventArgs e)
        {
            string mapb = Request.QueryString["mapb"];
            string sql = string.Format(@"
                DELETE [dbo].[tbl_phongban]
                WHERE MAPB= {0}", mapb);
            DataMan.ExcuteCommand(sql);
            Response.Redirect("QuanLyPhongBan.aspx");
        }

        protected void btn_luu_Click(object sender, EventArgs e)
        {
            try
            {
                string mapb = Request.QueryString["mapb"];
                string sql = string.Format(@"
                UPDATE [dbo].[tbl_phongban]
                SET [TENPB] = N'{1}'
                WHERE MAPB= {0}",mapb,txtTenPB.Text);
                DataMan.ExcuteCommand(sql);
                Response.Redirect("QuanLyPhongBan.aspx");

            }
            catch
            {
                lbThongbao.Text = "Thất bại";
            }
        }
        private void tang_ma()
        {
            string tang_ma = @"select MAPB from tbl_phongban order by MAPB DESC";
            DataTable db = DataMan.GetDataTable(tang_ma);
            int ma_cuoi = Convert.ToInt16(db.Rows[0][0].ToString()) + 1;
            txtMaPB.Text = ma_cuoi.ToString();
            txtMaPB.ReadOnly = true;
        }
       
    }
}