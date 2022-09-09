#!/bin/sh 
# export OMP_STACKSIZE=1g
export GFORTRAN_UNBUFFERED_PRECONNECTED=y
# ulimit -s unlimited

# ---------- Cr52_ti52 --------------
echo "start running log_Cr52_ti52_j0p.txt ..."
cat > Cr52_ti52_0.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5, 
  fn_int = "ti52.snt"
  fn_ptn = "Cr52_ti52_p.ptn"
  fn_save_wave = "Cr52_ti52_j0p.wav"
  gl = 1.0, 0.0, 
  gs = 3.91, -2.678, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 0
  n_block = 0
  n_eigen = 2
  n_restart_vec = 10
&end
EOF
nice ./kshell.exe Cr52_ti52_0.input > log_Cr52_ti52_j0p.txt 2>&1 

rm -f tmp_snapshot_Cr52_ti52_p.ptn_0_* tmp_lv_Cr52_ti52_p.ptn_0_* Cr52_ti52_0.input 


echo "start running log_Cr52_ti52_j4p.txt ..."
cat > Cr52_ti52_4.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5, 
  fn_int = "ti52.snt"
  fn_ptn = "Cr52_ti52_p.ptn"
  fn_save_wave = "Cr52_ti52_j4p.wav"
  gl = 1.0, 0.0, 
  gs = 3.91, -2.678, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 4
  n_block = 0
  n_eigen = 2
  n_restart_vec = 10
&end
EOF
nice ./kshell.exe Cr52_ti52_4.input > log_Cr52_ti52_j4p.txt 2>&1 

rm -f tmp_snapshot_Cr52_ti52_p.ptn_4_* tmp_lv_Cr52_ti52_p.ptn_4_* Cr52_ti52_4.input 


echo "start running log_Cr52_ti52_j8p.txt ..."
cat > Cr52_ti52_8.input <<EOF
&input
  beta_cm = 0.0
  eff_charge = 1.5, 0.5, 
  fn_int = "ti52.snt"
  fn_ptn = "Cr52_ti52_p.ptn"
  fn_save_wave = "Cr52_ti52_j8p.wav"
  gl = 1.0, 0.0, 
  gs = 3.91, -2.678, 
  hw_type = 1
  is_double_j = .true.
  max_lanc_vec = 200
  maxiter = 300
  mode_lv_hdd = 0
  mtot = 8
  n_block = 0
  n_eigen = 2
  n_restart_vec = 10
&end
EOF
nice ./kshell.exe Cr52_ti52_8.input > log_Cr52_ti52_j8p.txt 2>&1 

rm -f tmp_snapshot_Cr52_ti52_p.ptn_8_* tmp_lv_Cr52_ti52_p.ptn_8_* Cr52_ti52_8.input 


# --------------- transition probabilities --------------

echo "start running log_Cr52_ti52_tr_j0p_j4p.txt ..."
cat > Cr52_ti52_0_4.input <<EOF
&input
  fn_int   = "ti52.snt"
  fn_ptn_l = "Cr52_ti52_p.ptn"
  fn_ptn_r = "Cr52_ti52_p.ptn"
  fn_load_wave_l = "Cr52_ti52_j0p.wav"
  fn_load_wave_r = "Cr52_ti52_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Cr52_ti52_0_4.input > log_Cr52_ti52_tr_j0p_j4p.txt 2>&1 

rm -f Cr52_ti52_0_4.input


echo "start running log_Cr52_ti52_tr_j4p_j4p.txt ..."
cat > Cr52_ti52_4_4.input <<EOF
&input
  fn_int   = "ti52.snt"
  fn_ptn_l = "Cr52_ti52_p.ptn"
  fn_ptn_r = "Cr52_ti52_p.ptn"
  fn_load_wave_l = "Cr52_ti52_j4p.wav"
  fn_load_wave_r = "Cr52_ti52_j4p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Cr52_ti52_4_4.input > log_Cr52_ti52_tr_j4p_j4p.txt 2>&1 

rm -f Cr52_ti52_4_4.input


echo "start running log_Cr52_ti52_tr_j4p_j8p.txt ..."
cat > Cr52_ti52_4_8.input <<EOF
&input
  fn_int   = "ti52.snt"
  fn_ptn_l = "Cr52_ti52_p.ptn"
  fn_ptn_r = "Cr52_ti52_p.ptn"
  fn_load_wave_l = "Cr52_ti52_j4p.wav"
  fn_load_wave_r = "Cr52_ti52_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Cr52_ti52_4_8.input > log_Cr52_ti52_tr_j4p_j8p.txt 2>&1 

rm -f Cr52_ti52_4_8.input


echo "start running log_Cr52_ti52_tr_j8p_j8p.txt ..."
cat > Cr52_ti52_8_8.input <<EOF
&input
  fn_int   = "ti52.snt"
  fn_ptn_l = "Cr52_ti52_p.ptn"
  fn_ptn_r = "Cr52_ti52_p.ptn"
  fn_load_wave_l = "Cr52_ti52_j8p.wav"
  fn_load_wave_r = "Cr52_ti52_j8p.wav"
  hw_type = 1
  eff_charge = 1.5, 0.5
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Cr52_ti52_8_8.input > log_Cr52_ti52_tr_j8p_j8p.txt 2>&1 

rm -f Cr52_ti52_8_8.input


./collect_logs.py log_*Cr52_ti52* > summary_Cr52_ti52.txt
echo "Finish computing Cr52_ti52.    See summary_Cr52_ti52.txt"
echo 

