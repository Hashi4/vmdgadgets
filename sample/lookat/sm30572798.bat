set MIKU=sozai\MikuV3_05fin.pmx
set LUKA=sozai\���JV4X_37C.pmx
rem �S�Ă̐e��(5.5, 0.0, 0.0)
set LAMB_Lk=sozai\lk.vmd
rem �S�Ă̐e��(-5.5, 0.0, -3.0)
set LAMB_mk=sozai\mk.vmd
python ..\..\vmdgadgets\trace_model.py %MIKU%  %LAMB_mk% %LUKA% %LAMB_lk% miku_head.vmd
python ..\..\vmdgadgets\trace_model.py %LUKA%  %LAMB_lk% %MIKU% %LAMB_mk% luka_head.vmd
