@rem �ڐ�����
@rem sozai�f�B���N�g���Ƀ��f��2����R�s�[���Ă���
@set MODEL_YAHAGI="sozai\�ۂ�Ւ����_v.2.pmx"
@set MODEL_YAMATO="sozai\�ۂ�Ւ�����a_v.1.pmx"

@set MOTION_YAHAGI=yahagi_base.vmd
@set MOTION_YAMATO=yamato_base.vmd

@set EYES_CONST=--constraint ����  24 34 0 0.33 0.33 0
@set HEAD_CONST=--constraint �� 70 60 80 0.2 0.2 0
@set NECK_CONST=--constraint �� 90 90 90 0.1 0.1 0

@set FRAME_RANGES=--frame_range 0 5799 --frame_range 5844 5971 --frame_range 6007 9999
@set IGNORE=--ignore 70

@set VGPATH=..\..\..\vmdgadgets

python %VGPATH%\trace_model.py %MODEL_YAHAGI% %MOTION_YAHAGI% %MODEL_YAMATO% %MOTION_YAMATO% head_yahagi.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION_YAHAGI%|python %VGPATH%\merge_vmd.py -i - head_yahagi.vmd %MORPH% -o yahagi.vmd

python %VGPATH%\trace_model.py %MODEL_YAMATO% %MOTION_YAMATO% %MODEL_YAHAGI% %MOTION_YAHAGI% head_yamato.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION_YAMATO%|python %VGPATH%\merge_vmd.py -i - head_yamato.vmd %MORPH% -o yamato.vmd
