@rem �S�Ă̐e���ړ�����vmd���쐬
@rem ���O��sozai�f�B���N�g�����쐬���A���[�V�����t�@�C�����R�s�[���Ă���
@set VGPATH=..\..\..\vmdgadgets
@set ORIG_MOTION="sozai\�h���}�c���M�[.vmd"

python %VGPATH%\move_root.py %ORIG_MOTION% --pos 4 0 0 --angles 0 170 0 > yahagi_base.vmd
python %VGPATH%\move_root.py %ORIG_MOTION% --pos -4 0 0  > yamato_base.vmd
