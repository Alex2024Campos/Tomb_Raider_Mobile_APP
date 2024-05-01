using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AtividadeVendas
{
    public partial class Frm1 : Form
    {
        public Frm1()
        {
            InitializeComponent();
        }

        private void lbl1_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn1_Click(object sender, EventArgs e)
        {

            double sf, vc, qcv, vt, result, result2;
            sf = Convert.ToDouble(txt1.Text);
            vc = Convert.ToDouble(txt2.Text);
            qcv = Convert.ToDouble(txt3.Text);
            vt = Convert.ToDouble(txt4.Text);
            result2 = vt * 5 / 100;
            txt6.Text = result2.ToString();
            result = sf + vc + result2;
            txt5.Text = result.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Frm2 tela1 = new Frm2();
            tela1.Show();
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            txt1.Clear();
            txt2.Clear();
            txt3.Clear();
            txt4.Clear();
            txt5.Clear();
            txt6.Clear();
        }
    }
    }
