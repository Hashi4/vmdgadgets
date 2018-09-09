@rem sozai�f�B���N�g���ɂ��؂肵�����̂��R�s�[���Ă���
@rem 1�Ԏ��s��Ɏ��s
@rem motion_l.vmd, motion_r.vmd ���o���オ��̂�
@rem MMD��Ō������č�, �E���f���֓K�p


@set MODEL_R="sozai\�G��������(����).pmx"
@set MODEL_L="sozai\�~�N����(�f��).pmx"

@set MOTION_R=right_base.vmd
@set MOTION_L=left_base.vmd
@set CAMERA=sm33590155_camera.vmd

@set EYES_CONST1=--constraint ���� 16 12 0 0.35 0.30 0
@set EYES_CONST2=--constraint ���� 14 20 0 0.25 0.25 0

@set HEAD_CONST=--constraint �� 80 60 80 .3 .25 0
@set NECK_CONST=--constraint �� 80 60 80 .1 .1 0

@set FRAME_RANGE=--frame_range 0 2006 --frame_range 2195 2908 --frame_range 2921 3335 --frame_range 3364 3578 --frame_range 3635 4894 --frame_range 4920 5137 --frame_range 5164 5739

@set IGNORE=--ignore 70

@set VGPATH=..\..\..\vmdgadgets
python %VGPATH%\trace_camera.py %MODEL_R% %MOTION_R% %CAMERA% head_r.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST1% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGE% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION_R%|python %VGPATH%\merge_vmd.py -i - head_r.vmd -o motion_r.vmd

python %VGPATH%\trace_camera.py %MODEL_L% %MOTION_L% %CAMERA% head_l.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST2% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGE% %IGNORE%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION_L%|python %VGPATH%\merge_vmd.py -i - head_l.vmd -o motion_l.vmd
