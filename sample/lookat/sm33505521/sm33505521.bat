@rem ���؂肵�����̂�sozai�f�B���N�g���փR�s�[���Ă���
@rem �{�t�@�C�������s�A�o���オ��motion.vmd ��MMD��Ń��f���֓K�p
@set MODEL="sozai\�N� Kawaii Strike.pmx"
@set MOTION="sozai\�_���X���[�V����Miku�iTda���~�N�Œ����j.vmd"
@set CAMERA=sm33505521_camera.vmd

@set EYES_CONST=--constraint ���� 12 12 0 0.15 0.15 0
@set HEAD_CONST=--constraint �� 80 50 80 0.3 0.3 0
@set NECK_CONST=--constraint �� 80 50 80 0.1 0.1 0
@set IGNORE=--ignore 60

@set FRAME_RANGES=--frame_range 318 1589 --frame_range 1691 9999

@set VGPATH=..\..\..\vmdgadgets
python %VGPATH%\trace_camera.py %MODEL% %MOTION% %CAMERA% head.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION%|python %VGPATH%\merge_vmd.py -i - head.vmd -o motion.vmd 
