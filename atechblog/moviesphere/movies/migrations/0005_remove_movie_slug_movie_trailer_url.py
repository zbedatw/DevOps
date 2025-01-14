# Generated by Django 5.1.1 on 2024-09-28 14:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0004_review'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='movie',
            name='slug',
        ),
        migrations.AddField(
            model_name='movie',
            name='trailer_url',
            field=models.URLField(blank=True, null=True),
        ),
    ]
