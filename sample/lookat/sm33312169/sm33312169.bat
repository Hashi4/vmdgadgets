@rem ���؂肵�����̂�sozai�f�B���N�g���փR�s�[���āA�{�t�@�C�����s
@rem motion1.vmd, motion2.vmd, motion3.vmd ���o���オ��̂�
@rem MMD��ł����ꂼ�ꒆ���A�E�A�����f���֓K�p

@rem model
@set MODEL1="sozai\�`�n�c.pmx"
@set MODEL2="sozai\�鞦.pmx"
@SET MODEL3="sozai\�N� Kawaii Strike.pmx"

@rem motion
@set MOTION1="sozai\tda_center.vmd"
@set MOTION2="sozai\tda_right.vmd"
@set MOTION3="sozai\tda_left.vmd"

@rem camera
@set CAMERA="sozai\�������̂R�l���q�p.vmd"

@set EYES_CONST=--constraint ���� 9 12 0 0.15 0.15 0
@set HEAD_CONST=--constraint �� 60 60 60 0.4 0.35 0
@set NECK_CONST=--constraint �� 60 60 60 0.1 0.1 0
@set IGNORE=--ignore 80
@set FRAME_RANGES=--frame_range 946 2325 --frame_range 2769 4131 --frame_range 5005 6600

@set VGPATH=..\..\..\vmdgadgets

python %VGPATH%\trace_camera.py %MODEL1% %MOTION1% %CAMERA% head1.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION1%|python %VGPATH%\merge_vmd.py -i - head1.vmd -o motion1.vmd

python %VGPATH%\trace_camera.py %MODEL2% %MOTION2% %CAMERA% head2.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION2%|python %VGPATH%\merge_vmd.py -i - head2.vmd -o motion2.vmd

python %VGPATH%\trace_camera.py %MODEL3% %MOTION3% %CAMERA% head3.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION3%|python %VGPATH%\merge_vmd.py -i - head3.vmd -o motion3.vmd
