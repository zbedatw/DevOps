# Generated by Django 5.1.1 on 2024-09-20 09:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0002_movie_thumb'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='thumb',
            field=models.ImageField(blank=True, default='default.jpg', upload_to=''),
        ),
    ]
