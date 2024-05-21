# Generated by Django 4.2.13 on 2024-05-21 01:19

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=45)),
                ('category', models.CharField(max_length=45)),
                ('price', models.DecimalField(decimal_places=2, max_digits=10)),
                ('material', models.CharField(max_length=45)),
                ('size', models.CharField(max_length=45)),
                ('stock', models.PositiveIntegerField()),
                ('slug', models.SlugField()),
            ],
        ),
    ]