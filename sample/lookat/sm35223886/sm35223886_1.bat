@rem �S�Ă̐e���ړ�����vmd���쐬
@rem ���O��sozai�f�B���N�g�����쐬���A���[�V�����t�@�C�����R�s�[���Ă���
@set VGPATH=..\..\..\vmdgadgets
@set ORIG_MOTION="sozai\VALENTI.vmd"

python %VGPATH%\move_root.py %ORIG_MOTION% --pos 3.15 0 0 --angles 0 -160 0 > yahagi_base.vmd
python %VGPATH%\move_root.py %ORIG_MOTION% --pos -3 0 0 --angles 0 20 0 > yamato_base.vmd

@rem �u���v�̑傫������
@set PYTHONPATH=%PYTHONPATH%;%VGPATH%
python uo.py
