@rem ���O�ɂ��؂肵�����̂�sozai�f�B���N�g���փR�s�[���Ă���

@set ORIG_MOTION="sozai\���Ƃ������(���b�v�\��t��).vmd"

@set VGPATH=..\..\..\vmdgadgets

@rem �Z���^�[�A��IK�̈ړ���0.87�{
python %VGPATH%\scale_motion.py %ORIG_MOTION% plus_0.vmd -s 0.87

@rem �O���[�u�⍶��IK�A�\��j�]��K�X�ύX

@rem 5�t���[���Â��炷(�Ȃ��ڂ͎��Ƃŕ␳)
python shift.py plus_0.vmd

@rem �u���ׂĂ̐e�v�ʒu��ύX
python %VGPATH%\move_root.py plus_0.vmd 1.vmd --pos -9 0 -9
python %VGPATH%\move_root.py plus_5.vmd 2.vmd --pos -3 0 -3
python %VGPATH%\move_root.py plus_10.vmd 3.vmd --pos 3 0 3
python %VGPATH%\move_root.py plus_15.vmd 4.vmd --pos 9 0 9
