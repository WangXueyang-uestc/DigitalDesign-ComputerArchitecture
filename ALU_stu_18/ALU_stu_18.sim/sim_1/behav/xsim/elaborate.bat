@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Jul 03 19:56:21 +0800 2024
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto ace5023db2f44e28b6066dd87723b53d --incr --debug typical --relax --mt 2 -L xil_defaultlib -L blk_mem_gen_v8_4_2 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot alu_tb_behav xil_defaultlib.alu_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0