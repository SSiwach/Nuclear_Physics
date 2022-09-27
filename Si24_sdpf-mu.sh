#!/bin/sh 
# export OMP_STACKSIZE=1g
export GFORTRAN_UNBUFFERED_PRECONNECTED=y
# ulimit -s unlimited

# ---------- Si24_sdpf-mu --------------
echo "start running log_Si24_sdpf-mu_j0p.txt ..."
cat > Si24_sdpf-mu_0.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.35, 0.35
  fn_int = "sdpf-mu.snt"
  fn_ptn = "Si24_sdpf-mu_p.ptn"
  fn_save_wave = "Si24_sdpf-mu_j0p.wav"
  gl = 1.0, 0.0, 
  gs = 3.91, -2.678, 
  hw_type = 2
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
nice ./kshell.exe Si24_sdpf-mu_0.input > log_Si24_sdpf-mu_j0p.txt 2>&1 

rm -f tmp_snapshot_Si24_sdpf-mu_p.ptn_0_* tmp_lv_Si24_sdpf-mu_p.ptn_0_* Si24_sdpf-mu_0.input 


echo "start running log_Si24_sdpf-mu_j4p.txt ..."
cat > Si24_sdpf-mu_4.input <<EOF
&input
  beta_cm = 10.0
  eff_charge = 1.35, 0.35
  fn_int = "sdpf-mu.snt"
  fn_ptn = "Si24_sdpf-mu_p.ptn"
  fn_save_wave = "Si24_sdpf-mu_j4p.wav"
  gl = 1.0, 0.0, 
  gs = 3.91, -2.678, 
  hw_type = 2
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
nice ./kshell.exe Si24_sdpf-mu_4.input > log_Si24_sdpf-mu_j4p.txt 2>&1 

rm -f tmp_snapshot_Si24_sdpf-mu_p.ptn_4_* tmp_lv_Si24_sdpf-mu_p.ptn_4_* Si24_sdpf-mu_4.input 


# --------------- transition probabilities --------------

echo "start running log_Si24_sdpf-mu_tr_j0p_j4p.txt ..."
cat > Si24_sdpf-mu_0_4.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "Si24_sdpf-mu_p.ptn"
  fn_ptn_r = "Si24_sdpf-mu_p.ptn"
  fn_load_wave_l = "Si24_sdpf-mu_j0p.wav"
  fn_load_wave_r = "Si24_sdpf-mu_j4p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Si24_sdpf-mu_0_4.input > log_Si24_sdpf-mu_tr_j0p_j4p.txt 2>&1 

rm -f Si24_sdpf-mu_0_4.input


echo "start running log_Si24_sdpf-mu_tr_j4p_j4p.txt ..."
cat > Si24_sdpf-mu_4_4.input <<EOF
&input
  fn_int   = "sdpf-mu.snt"
  fn_ptn_l = "Si24_sdpf-mu_p.ptn"
  fn_ptn_r = "Si24_sdpf-mu_p.ptn"
  fn_load_wave_l = "Si24_sdpf-mu_j4p.wav"
  fn_load_wave_r = "Si24_sdpf-mu_j4p.wav"
  hw_type = 2
  eff_charge = 1.35, 0.35
  gl = 1.0, 0.0
  gs = 3.91, -2.678
&end
EOF
nice ./transit.exe Si24_sdpf-mu_4_4.input > log_Si24_sdpf-mu_tr_j4p_j4p.txt 2>&1 

rm -f Si24_sdpf-mu_4_4.input


./collect_logs.py log_*Si24_sdpf-mu* > summary_Si24_sdpf-mu.txt
echo "Finish computing Si24_sdpf-mu.    See summary_Si24_sdpf-mu.txt"
echo 

