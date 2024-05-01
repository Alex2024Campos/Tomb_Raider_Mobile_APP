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
    public partial class Frm3 : Form
    {
        public Frm3()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

        private void btn1_Click(object sender, EventArgs e)
        {
            double dis, result;
            dis = Convert.ToDouble(txt1.Text);
            if (dis < 800)
            {
                result = 5000;
                txt2.Text = result.ToString();
            }
            else if (dis >= 800 && dis <= 1500)
            {
                result = 10000;
                txt2.Text = result.ToString();
            }
            else
            {
                result = 15000;
                txt2.Text = result.ToString();
            }
            }

        private void btn3_Click(object sender, EventArgs e)
        {
            this.Hide();
            Frm2 tela1 = new Frm2();
            tela1.Show();
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            txt1.Clear();
            txt2.Clear();
        }
    }
}
