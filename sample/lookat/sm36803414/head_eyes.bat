@rem ���f���A���[�V�����A�J����(������0.91�{)��sozai �f�B���N�g���ɕۑ�
@rem �{�t�@�C�����s�㗼��IK���I�t�ɂ��� merged.vmd �����f���ɓǍ���
@rem head.vmd �� ���ځE���E�� �̂�

@set MODEL=".\sozai\Eunice08mizugi2.pmx"
@set MOTION=".\sozai\�Ɋy�㔼�g2�{�[���������p.vmd"
@set CAMERA=".\sozai\�J�����i��������Œ����j_.91.vmd"

@set EYES_CONST=--constraint ���� 30 40 0 0.8 0.8 0.0
@set HEAD_CONST=--constraint �� 65 60 45 0.2 0.2 0.0
@SET NECK_CONST=--constraint �� 30 45 25 0.1 0.1 0.0

@set FRAME_RANGES=--frame_range 948 4021 --frame_range 4918 9999
@set OMEGA=--omega 0
@set IGNORE=--ignore2 30 35

@set VGPATH=..\..\..\vmdgadgets
python %VGPATH%\trace_camera.py %MODEL% %MOTION% %CAMERA% head.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %OMEGA% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION%|python %VGPATH%\merge_vmd.py -i - head.vmd -o merged.vmd


python %VGPATH%\camlight.py %CAMERA% light.vmd --rx 10 --ry 10


