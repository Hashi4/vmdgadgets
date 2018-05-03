@rem ��E���E���ڃ��[�V��������������܂�
@rem ���f���A���[�V�����A�J�����̊e�t�@�C����\��sozai�f�B���N�g���ɗp��
@rem ���s��A312�t���[���ڑ��A�C�ɂȂ鏊����Œ���(60FPS��)

@set MODEL="sozai\MiraiAkari_v1.0.pmx"
@set MOTION="sozai\Masked bitcH.vmd"
@set CAMERA="sozai\��g���p�J�������[�V����ver1.01.vmd"

@rem tekitou
@set EYES_CONST=--constraint ���� 10 15 0 .15 .15 0
@set HEAD_CONST=--constraint �� 40 40 40 .1 .1 0
@set NECK_CONST=--constraint �� 60 60 60 .3 .3 0
@set IGNORE=--ignore 90

@set VGPATH=..\..\vmdgadgets
@rem ���E��E���ڃ��[�V�������� => head.vmd
python %VGPATH%\trace_camera.py %MODEL% %MOTION% %CAMERA% head.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %IGNORE% --frame_range 275 9999
@rem ���̑����[�V�����ƍ��� => merged.vmd
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION%|python %VGPATH%\merge_vmd.py -i - head.vmd -o merged.vmd
