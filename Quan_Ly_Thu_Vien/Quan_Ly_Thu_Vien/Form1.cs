﻿using QuanLyThuVien;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quan_Ly_Thu_Vien
{
    public partial class frm_Start : Form
    {
        public frm_Start()
        {
            InitializeComponent();
        }

        private void butBanDoc_Click(object sender, EventArgs e)
        {
            BanDoc frm = new BanDoc();
            frm.ShowDialog();
            frm.Close();
            frm.Dispose();
        }

        private void butSach_Click(object sender, EventArgs e)
        {
               Sach frm = new Sach();
               frm.ShowDialog();
               frm.Close();
               frm.Dispose();
          }

        private void butNXB_Click(object sender, EventArgs e)
        {
               //NXBTL frm = new NXBTL();
               //frm.ShowDialog();
               //frm.Close();
               //frm.Dispose();
          }

        private void butPhieuMuon_Click(object sender, EventArgs e)
        {
            PhieuMuon frm = new PhieuMuon();
            frm.ShowDialog();
            frm.Close();
            frm.Dispose();
        }
        private Connection connector = new Connection();
        private DataTable table;
        private void butLogIn_Click(object sender, EventArgs e)
        {
            table = new DataTable();
            table = connector.LoadData("8");
            int p = 0;
            for (int i = 0; i < table.Rows.Count; i++)
            {
                if (textID.Text.Trim() == table.Rows[i][0].ToString().Trim() && textPass.Text.Trim() == table.Rows[i][1].ToString().Trim())
                {
                    p = 1;
                    break;
                }
            }
            if (p == 0)
            {
                MessageBox.Show("Wrong password or ID", "O___O", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            else
            {
                MessageBox.Show("Welcome to QuanLyThuVien project", "^...^", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                butHuongDan.Enabled = butBanDoc.Enabled = butNXB.Enabled = butPhieuMuon.Enabled = butSach.Enabled = true;
                butHuongDan.Visible = butBanDoc.Visible = butNXB.Visible = butPhieuMuon.Visible = butSach.Visible = true;
                panel1.Visible = false;
                panel2.Visible = true;
            }
        }

        private void butHuongDan_Click(object sender, EventArgs e)
        {
            //HuongDan frm = new HuongDan();
            //frm.ShowDialog();
            //frm.Close();
            //frm.Dispose();
        }

        private void butLogOut_Click(object sender, EventArgs e)
        {
            butHuongDan.Enabled = butBanDoc.Enabled = butNXB.Enabled = butPhieuMuon.Enabled = butSach.Enabled = false;
            butHuongDan.Visible = butBanDoc.Visible = butNXB.Visible = butPhieuMuon.Visible = butSach.Visible = false;
            textID.Text = textPass.Text = "";
            panel1.Visible = true;
            panel2.Visible = false;
        }
    }
}
