@rem ���؂肵�����̂�sozai�f�B���N�g���փR�s�[���Ă���
@rem 1�Ԏ��s��A�{�t�@�C�������s

@set VGPATH=..\..\..\vmdgadgets

@set EYES_CONST=--constraint ���� 9.0 15.0 0.0 0.2 0.2 0.0
@set HEAD_CONST=--constraint �� 80 60 80 0.3 0.3 0
@set NECK_CONST=--constraint �� 80 60 80 0.1 0.1 0

@rem �J�����͂��؂肵�����̂� X:-3, Z:-2 ���Ă܂�
@set CAMERA="sozai\�鍑�����@�J����.vmd"
@set FRAME_RANGES=--frame_range 0 4884  --frame_range 5975 9999

@set MODEL_KONGO="sozai\��������(�~���Ȃ�).pmx"

@set TARGET=����
@set MODEL=%MODEL_KONGO%
@set MOTION=1.vmd
call :GAZE

@set TARGET=��b
@set MODEL_HIEI="sozai\��b����(�~���Ȃ�).pmx"
@set MOTION=2.vmd
@set MODEL=%MODEL_HIEI%
call :GAZE

@set TARGET=�Y��
@set MODEL="sozai\�Y������(�~���Ȃ�).pmx"
@set MOTION=3.vmd
call :GAZE

@rem ����
@set MODEL="sozai\��������(�~���Ȃ�).pmx"
@set TARGET=����
@set MOTION=4.vmd
call :GAZE

exit /b

:GAZE
python %VGPATH%\trace_camera.py %MODEL% %MOTION% %CAMERA% %TARGET%_head.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES% %IGNORE% %TRIM%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION%|python %VGPATH%\merge_vmd.py -i - %TARGET%_head.vmd -o %TARGET%.vmd
