# �x�[�X�C���[�W
FROM python:3.10

# ��ƃf�B���N�g���̐ݒ�
WORKDIR /app

# �ˑ��֌W�̃C���X�g�[��
COPY requirements.txt .
RUN pip install -r requirements.txt

# �\�[�X�R�[�h���R���e�i�ɃR�s�[
COPY . .

# Gunicorn�ŃA�v���P�[�V�������N��
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
